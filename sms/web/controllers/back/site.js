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

var biz = {
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

exports.indexUI = function(req, res, next){

	var ep = EventProxy.create('citys', function (citys){

		res.render('back/Index', {
			conf: conf,
			title: conf.corp.name,
			topMessage: getTopMessage(req),
			description: '',
			keywords: ',Bootstrap3,nodejs,express,javascript,java,xhtml,html5',
			loginState: 2 === req.session.lv,
			data: {
				citys: citys
			}
		});
	});

	ep.fail(function (err){
		next(err);
	});

	biz.zone.findCitys('3', function (err, docs){
		if(err) return ep.emit('error', err);
		ep.emit('citys', docs);
	});
};

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

	// data = {
	// 	Account: 'leiguang0371',
	// 	Password: '818287',
	// 	Content: '121',
	// 	Phones: '13837186852,18530053050',
	// 	Channel: '5'
	// };

	var mobiles = getMobile(data, res);

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