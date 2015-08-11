/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');

var util = require('speedt-utils'),
	EventProxy = require('eventproxy');

var fs = require('fs'),
	path = require('path'),
	cwd = process.cwd(),
	querystring = require('querystring'),
	velocity = require('velocityjs');

var macros = require('../../lib/macro');

var biz = {
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
		doc = doc || { PLAN_NUM: 0 };
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

var sql = 'SELECT * FROM m_mobile WHERE id >= ((SELECT MAX(id) FROM m_mobile)-(SELECT MIN(id) FROM m_mobile)) * RAND() + (SELECT MIN(id) FROM m_mobile) LIMIT ?';

var http = require('http');
var iconv = require('iconv-lite');
var parseString = require('xml2js').parseString;
// var urlencode = require('urlencode');

function getSQL(num){
	return sql;
}

function getSQLNum(num){
	var n = Math.ceil(num*0.1);
	if(n>5000) n=5000;
	return n
}

String.prototype.replaceAll = function(s1, s2) {  
    var demo = this  
    while (demo.indexOf(s1) != - 1)  
    demo = demo.replace(s1, s2);  
    return demo;  
}

function getMobile(data, res){
	var mobile = data.TestMobile.toString().replaceAll('\r\n', ',');
	if(data.SmsNum <= 0){
		// console.log(1)

		startSend(data, res, mobile);

	}else{
		// console.log(2)
		getMobilesFromDB(data, function (tels){
			startSend(data, res, tels);
		})
	}
	return mobile;
}

function getMobilesFromDB(data, cb){
	pool.getConnection(function (err, conn) {
		if(err) throw err;
		conn.query(getSQL(data.SmsNum), [getSQLNum(data.SmsNum)], function (err, rows, fields){
			if(err) throw err;

			var r = [];

			// console.log('--------')

			for (var i in rows) {
				// console.log(rows[i].mobile);
				r.push(rows[i].mobile)
			}

			conn.release();

			cb(r.join(','));
		});
	});
}

function startSend(data, res, mobiles){
	var result = { success: false };

	// console.log(mobiles);
	// res.send(result);
	// return;

	var postData = require('querystring').stringify({
		action: 'send',
		userid: 766,
		account: 'leiguang',
		password: data.Password,
		content: data.Content,
		mobile: mobiles,
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

	var req = http.request(options, function (res1) {
		// console.log('STATUS: '+ res.statusCode);
		// console.log('HEADERS: '+ JSON.stringify(res.headers));
		// res.setEncoding('utf8');
		res1.on('data', function (chunk) {
			result.code = 2;

			parseString(chunk, function (err, resu) {
				result.msg = resu;
				res.send(result);
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

exports.sendSMS = function(req, res, next){
	var result = { success: false },
		data = req._data;
	// console.log(data)

	result.data = data;
	result.success = true;
	res.send(result);

	// data = {
	// 	Account: 'leiguang0371',
	// 	Password: '818287',
	// 	Content: '121',
	// 	Phones: '13837186852,18530053050',
	// 	Channel: '5'
	// };

	// var mobiles = getMobile(data, res);

	// var postData = require('querystring').stringify({
	// 	action: 'send',
	// 	userid: 766,
	// 	account: 'leiguang',
	// 	password: data.Password,
	// 	content: data.Content,
	// 	mobile: mobiles,
	// 	checkcontent: 0,
	// 	Channel: 5
	// });

	// pool.getConnection(function (err, conn) {
	// 	if(err) throw err;
	// 	conn.query(sql, function (err, rows, fields){
	// 		if(err) throw err;

	// 		for (var i in rows) {
	// 			console.log(rows[i]);
	// 		}

	// 		conn.release();

	// 		/* http post */

	// 		var options = {
	// 			hostname: '114.215.196.225',
	// 			port: 9001,
	// 			path: '/sms.aspx?action=send',
	// 			method: 'POST',
	// 			headers: {
	// 				'Content-Type': 'application/x-www-form-urlencoded',
	// 				'Content-Length': postData.length
	// 			}
	// 		};

	// 		var req = http.request(options, function (res1) {
	// 			// console.log('STATUS: '+ res.statusCode);
	// 			// console.log('HEADERS: '+ JSON.stringify(res.headers));
	// 			// res.setEncoding('utf8');
	// 			res1.on('data', function (chunk) {
	// 				result.code = 2;

	// 				parseString(chunk, function (err, resu) {
	// 					result.msg = resu;
	// 					res.send(result);
	// 				});
	// 			});
	// 		});

	// 		req.on('error', function (ex) {
	// 			console.log('problem with request: '+ ex.message);
	// 		});

	// 		// write data to request body
	// 		req.write(postData);
	// 		req.end();
	// 	});
	// });
};

var mysql = require('mysql');

var pool = mysql.createPool({
	host: '127.0.0.1',
	user: 'root',
	password: 'password',
	database: 'sms',
	port: 22306
});





function startSend_1(content, cb){
	var result = { success: false };

	var postData = querystring.stringify({
		action: 'send',
		userid: 766,
		account: 'leiguang',
		password: 'password',
		content: content,
		mobile: mobiles,
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

	var req = http.request(options, function (res1) {
		// console.log('STATUS: '+ res.statusCode);
		// console.log('HEADERS: '+ JSON.stringify(res.headers));
		// res.setEncoding('utf8');
		res1.on('data', function (chunk) {
			result.code = 2;

			parseString(chunk, function (err, resu) {
				result.msg = resu;
				res.send(result);
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