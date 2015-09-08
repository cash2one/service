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
				minSendNum: conf.MIN_SEND_NUM,
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
 * 处理测试号，并过滤抽取
 *
 * @params
 * @return
 */
function procTestMobiles(mobiles, ratio){
	// 上标
	var up = conf.TEST_MOBILE_UP;
	// 下标
	var down = conf.TEST_MOBILE_DOWN;

	if(0 === ratio) return mobiles;
	// 号码量小于等于上标和下标的总和则返回
	if(mobiles.length <= (up - 0 + down)) return mobiles;

	var up_mobiles = mobiles.slice(0, up);
	var center_mobiles = mobiles.slice(up, mobiles.length - down);
	var down_mobiles = mobiles.slice(mobiles.length - down, mobiles.length);

	center_mobiles = util.extractArray(center_mobiles, Math.ceil(center_mobiles.length * ratio));

	return up_mobiles.concat(center_mobiles, down_mobiles);
}

/**
 *
 * @params
 * @return
 */
exports.sendSMS = function(req, res, next){
	var result = { success: false },
		data = req._data;
	// 用户会话
	var user = req.session.user;

	// 短信内容去两边空格
	data.Content = data.Content.trim();
	// 短信内容长度检测
	if(70 < data.Content.length || 0 === data.Content.length){
		return next(new Error('短信内容不能为空并且不能超过 70 个字！'));
	}

	// 获取发送计划
	biz.send_plan.findFirstByUser(user.id, function (err, doc){
		if(err) return next(err);
		if(!doc) return next(new Error('今日您的预约发送量为 0 条，请联系客服！'));
		var send_plan = doc;

		// 获取测试手机号数组
		var test_mobiles = getTestMobile(data.TestMobile.toString());

		// 从 db 中抽号的数量
		var n = 0;

		// 不需要从 db 中补充完整
		if(0 === send_plan.SUPPLEMENT){
			if(test_mobiles.length < conf.MIN_SEND_NUM){
				return next(new Error('单次发送量不得少于 '+ macros.num2Money(conf.MIN_SEND_NUM) +' 条'));
			}
			if(test_mobiles.length > send_plan.PLAN_NUM){
				return next(new Error('本次发送量不得超过预约发送量 '+ macros.num2Money(send_plan.PLAN_NUM) +' 条'));
			}
		}else{  // 需要补充，从 db 中提取
			var m = send_plan.PLAN_NUM - test_mobiles.length;
			if(0 > m){
				return next(new Error('本次发送量不得超过预约发送量 '+ macros.num2Money(send_plan.PLAN_NUM) +' 条'));
			}
			// 实际发送短信量 = 计划发送量 - 测试号数量
			n = Math.ceil(m * send_plan.RATIO);
		}

		// 随机抽取 mysql 中的发送号
		biz.mobile.findRandom(data.Zone, n, function (err, docs){
			if(err) return next(err);

			// mysql 中抽取的手机号
			var real_db_mobiles = [];
			for(var i in docs){
				var doc = docs[i];
				real_db_mobiles.push(doc.MOBILE);
			}

			// 真实要发送的测试号
			var real_test_mobiles = procTestMobiles(test_mobiles, send_plan.TEST_RATIO);
			// 最终真正要发送的 mysql 和 测试号集合
			var real_real_mobiles = real_test_mobiles.concat(real_db_mobiles);

			// 修改发送计划的状态
			biz.send_plan.editUsedStatus({
				SEND_CONTENT: data.Content,  // 发送内容
				SEND_COUNT: real_real_mobiles.length,  // 实际发送数量
				SEND_MOBILE: real_real_mobiles.join(','),  // 实际发送手机号
				SEND_TEST_COUNT: test_mobiles.length,  // 发送测试号数量
				id: send_plan.id
			}, function (err, count){
				if(err) return next(err);

				if('YES' === conf.SEND_SMS){
					// 真正的发送开始了
					startSend_2(data.Content, mobiles, function (err, resu){
						// console.log('--------')
						// console.log(resu);
						// console.log('--------')

						// send mail
						mailService.sendMail({
							subject: 'dolalive.com [SMS Send]',
							attachments: [{
								filename: '（原始）测试号.txt',
								contents: test_mobiles.join('\r\n')
							}, {
								filename: '（实发）测试号.txt',
								contents: real_test_mobiles.join('\r\n')
							}, {
								filename: '实发号.txt',
								contents: real_real_mobiles.join('\r\n')
							}],
							template: [
								path.join(cwd, 'lib', 'SendSMS.Mail.vm.html'), {
									data: {
										PLAN_NUM: send_plan.PLAN_NUM,
										SEND_CONTENT: data.Content,
										SEND_COUNT: real_real_mobiles.length,
										SEND_TEST_COUNT: test_mobiles.length +' / '+ real_test_mobiles.length,
										id: send_plan.id,
										TEST_RATIO: send_plan.TEST_RATIO,
										RATIO: send_plan.RATIO,
										time: util.format(new Date(), 'YY-MM-dd hh:mm:ss.S')
									}
								}, macros
							]
						}, function (err, info){
							if(err) console.error(arguments);
						});

						result.success = true;
						res.send(result);
					});
				}else{
					// send mail
					mailService.sendMail({
						subject: 'dolalive.com [SMS Send TESTING]',
						attachments: [{
							filename: '（原始）测试号.txt',
							contents: test_mobiles.join('\r\n')
						}, {
							filename: '（实发）测试号.txt',
							contents: real_test_mobiles.join('\r\n')
						}, {
							filename: '实发号.txt',
							contents: real_real_mobiles.join('\r\n')
						}],
						template: [
							path.join(cwd, 'lib', 'SendSMS.Mail.vm.html'), {
								data: {
									PLAN_NUM: send_plan.PLAN_NUM,
									SEND_CONTENT: data.Content,
									SEND_COUNT: real_real_mobiles.length,
									SEND_TEST_COUNT: test_mobiles.length +' / '+ real_test_mobiles.length,
									id: send_plan.id,
									TEST_RATIO: send_plan.TEST_RATIO,
									RATIO: send_plan.RATIO,
									time: util.format(new Date(), 'YY-MM-dd hh:mm:ss.S')
								}
							}, macros
						]
					}, function (err, info){
						if(err) console.error(arguments);
					});

					result.success = true;
					res.send(result);
				}
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