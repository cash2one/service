/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');

var util = require('speedt-utils'),
	mailService = util.service.mail,
	EventProxy = require('eventproxy');

var fs = require('fs'),
	path = require('path'),
	cwd = process.cwd(),
	querystring = require('querystring'),
	velocity = require('velocityjs');

var macros = require('../../lib/macro');

var biz = {
	mobile: require('../../biz/mobile'),
	send_plan: require('../../biz/send_plan'),
	mobile_type: require('../../biz/mobile_type'),
	zone: require('../../biz/zone')
};

/**
 *
 * @params
 * @return
 */
function getTopMessage(req){
	var user = req.session.user;
	var t = new Date();
	var y = t.getFullYear();
	var m = util.padLeft(t.getMonth() + 1, '0', 2);
	var d = util.padLeft(t.getDate(), '0', 2);
	return '欢迎您，'+ user.CORP_NAME +'。今天是'+ y +'年'+ m +'月'+ d +'日。';
};

/**
 *
 * @params
 * @return
 */
exports.indexUI = function(req, res, next){

	var ep = EventProxy.create('citys', 'send_plan', function (citys, send_plan){

		res.render('back/Index', {
			conf: conf,
			title: conf.corp.name,
			topMessage: getTopMessage(req),
			description: '',
			keywords: ',Bootstrap3,nodejs,express,javascript,java,xhtml,html5',
			loginState: 2 === req.session.lv,
			data: {
				send_plan: send_plan,
				citys: citys
			}
		});
	});

	ep.fail(function (err){
		next(err);
	});

	biz.zone.findCitys('3', function (err, docs){
		if(err) return ep.emit('error', err);
		var citys = docs;
		var city_1 = citys[0];
		ep.emit('citys', citys);
		// biz.zone.findRegions(city_1.id, function (err, docs){
		// 	if(err) return ep.emit('error', err);
		// 	city_1.regions = docs;
		// 	ep.emit('citys', citys);
		// });

		// biz.mobile_type.findByZone(city_1.id, function (err, docs){
		// 	if(err) return ep.emit('error', err);
		// 	docs = treeNode(docs);
		// 	ep.emit('mobile_type', docs);
		// });
	});

	var user = req.session.user;

	biz.send_plan.findFirstByUser(user.id, function (err, doc){
		if(err) return ep.emit('error', err);
		doc = doc || { id: '0', PLAN_NUM: 0 };
		ep.emit('send_plan', doc);
	});
};

/**
 *
 * @params
 * @return
 */
exports.changeZone = function(req, res, next){
	var result = { success: false };
	var zone_code = req.params.zone_code;

	var ep = EventProxy.create('citys', 'mobile_type', 'template1', 'template2', function (citys, mobile_type, template1, template2){

		var html1 = velocity.render(template1, {
			conf: conf,
			data: {
				citys: citys
			}
		}, macros);

		var html2 = velocity.render(template2, {
			conf: conf,
			data: {
				mobile_type: mobile_type
			}
		}, macros);

		result.success = true;
		result.data = [html1, html2];
		res.send(result);
	});

	ep.fail(function (err){
		next(err);
	});

	biz.zone.findRegions(zone_code, function (err, docs){
		if(err) return ep.emit('error', err);
		var citys = [{
			id: zone_code,
			regions: docs
		}]
		ep.emit('citys', citys);
	});

	biz.mobile_type.findByZone(zone_code, function (err, docs){
		if(err) return ep.emit('error', err);
		docs = treeNode(docs);
		ep.emit('mobile_type', docs);
	});

	exports.getTemplate(function (err, template){
		if(err) return ep.emit('error', err);
		ep.emit('template1', template);
	});

	exports.getTemplate2(function (err, template){
		if(err) return ep.emit('error', err);
		ep.emit('template2', template);
	});
};

/**
 *
 * @params
 * @return
 */
(function (exports){
	var temp = null;

	/**
	 * 获取模板
	 *
	 * @params
	 * @return
	 */
	exports.getTemplate = function(cb){
		if(temp) return cb(null, temp);

		fs.readFile(path.join(cwd, 'views', 'back', '_pagelet', 'Side.Zone_CheckboxList.html'), 'utf8', function (err, template){
			if(err) return cb(err);
			temp = template;
			cb(null, temp);
		});
	};
})(exports);

/**
 *
 * @params
 * @return
 */
(function (exports){
	var temp = null;

	/**
	 * 获取模板
	 *
	 * @params
	 * @return
	 */
	exports.getTemplate2 = function(cb){
		if(temp) return cb(null, temp);

		fs.readFile(path.join(cwd, 'views', 'back', '_pagelet', 'Side.Mobile_Type_CheckboxList.html'), 'utf8', function (err, template){
			if(err) return cb(err);
			temp = template;
			cb(null, temp);
		});
	};
})(exports);

/**
 *
 * @params
 * @return
 */
function treeNode(docs){
	var tree = [];

	for(var i in docs){
		var doc = docs[i];
		if('0' === doc.PID){
			doc.children = [];
			tree.push(doc);

			for(var j in docs){
				var docc = docs[j];
				if(docc.PID === doc.id){
					doc.children.push(docc);
				}
			}
		}
	}

	return tree;
}

var http = require('http');
var iconv = require('iconv-lite');
var parseString = require('xml2js').parseString;
// var urlencode = require('urlencode');

/**
 * 获取测试手机号数组
 *
 * @params
 * @return
 */
function getTestMobile(testMobile){
	var newMobiles = [];
	var mobiles = util.replaceAll(testMobile, '\r\n', ',').split(',');
	for(var i in mobiles){
		var mobile = util.checkMobile(mobiles[i]);
		if('' !== mobile) newMobiles.push(mobile);
	}
	return newMobiles;
}

/**
 *
 * @params
 * @return
 */
exports.sendSMS = function(req, res, next){
	var result = { success: false },
		data = req._data;

	data.Content = data.Content.trim();
	// 文本内容长度
	var content_len = data.Content.length;

	if(0 === content_len) return next(new Error('短信内容不能为空，请填写！'));
	if(70 < content_len) return next(new Error('短信内容不能超过70个字！'));

	// 获取测试手机号数组
	var test_mobiles = getTestMobile(data.TestMobile.toString());
	if(100000 < test_mobiles.length) return next(new Error('测试号数量不能大于100000个！'));
	// 实际要发送的手机号
	var mobiles = null;

	var user = req.session.user;

	// 获取发送计划
	biz.send_plan.findFirstByUser(user.id, function (err, doc){
		if(err) return next(err);
		if(!doc) return next(new Error('今日您的预约发送量为0条，请联系客服！'));
		var send_plan = doc;

		// 测试号比率，如果大于0，则对测试号数量进行抽取相应的比率
		if(0 < doc.TEST_RATIO){
			// 测试号抽取
			mobiles = util.extractArray(test_mobiles, Math.ceil(test_mobiles.length * doc.TEST_RATIO));
		}else{
			if(5000 < test_mobiles.length) return next(new Error('测试号数量不能大于5000个！'));
			mobiles = test_mobiles;
		}

		// 实际发送短信量
		var n = Math.ceil(doc.PLAN_NUM * doc.RATIO);
		// n = 0;

		// 随机发送号
		biz.mobile.findRandom(data.Zone, n, function (err, docs){
			if(err) return next(err);

			// 从db中提取的手机号
			for(var i in docs){
				var doc = docs[i];
				mobiles.push(doc.MOBILE);
			}

			// 修改发送计划的状态
			biz.send_plan.editUsedStatus({
				Content: data.Content,
				Count: mobiles.length,
				Mobiles: mobiles.join(','),
				SEND_TEST_COUNT: test_mobiles.length,
				id: send_plan.id
			}, function (err, count){
				if(err) return next(err);

				// 真正的发送开始了
				// startSend_2(data.Content, mobiles, function (err, resu){
				// 	console.log('--------')
				// 	console.log(resu);
				// 	console.log('--------')

					// send mail
					mailService.sendMail({
						subject: 'dolalive.com [SMS Send]',
						template: [
							path.join(cwd, 'lib', 'SendSMS.Mail.vm.html'), {
								data: {
									Content: data.Content,
									Count: mobiles.length,
									SEND_TEST_COUNT: test_mobiles.length,
									id: send_plan.id,
									TEST_RATIO: send_plan.TEST_RATIO,
									time: util.format(new Date(), 'YY-MM-dd hh:mm:ss.S'),
									TEST_MOBILES: test_mobiles.join(','),
									MOBILES: mobiles.join(',')
								}
							}, macros
						]
					}, function (err, info){
						if(err) console.log(arguments);
					});

					result.success = true;
					res.send(result);
				// });
			});
		});
	});
};

/**
 *
 * @params
 * @return
 */
function startSend_1(content, mobiles, cb){
	// TODO
}

/**
 *
 * @params
 * @return
 */
function startSend_2(content, mobiles, cb){
	var result = { success: false };

	var postData = require('querystring').stringify({
		action: 'send',
		userid: 766,
		account: 'leiguang',
		password: 'zs818287',
		content: content,
		mobile: mobiles.join(','),
		checkcontent: 0,
		Channel: 5
	});

	var options = {
		hostname: '114.215.196.225',
		port: 9001,
		path: '/sms.aspx?action=send',
		method: 'POST',
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded',
			'Content-Length': postData.length
		}
	};

	var req = http.request(options, function (res) {
		// console.log('STATUS: '+ res.statusCode);
		// console.log('HEADERS: '+ JSON.stringify(res.headers));
		// res.setEncoding('utf8');
		res.on('data', function (chunk) {
			parseString(chunk, function (err, result) {
				if(err) return cb(err);

				// 格式化后的结果
				result = formatSendResult2(result);

				if(!result.success){
					return cb(new Error(result.msg));
				}

				cb(null, result);
			});
		});
	});

	req.on('error', function (ex) {
		console.log('problem with request: '+ ex.message);
	});

	// write data to request body
	req.write(postData);
	req.end();
}

/**
 *
 * @params
 * @return
 */
function formatSendResult2(data){
	var result = {
		success: 'Success' === data.returnsms.returnstatus[0],
		msg: data.returnsms.message[0],
		data: {
			successCount: data.returnsms.successCounts[0],
			remainpoint: data.returnsms.remainpoint[0]
		}
	};
	return result;
}