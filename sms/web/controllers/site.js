/*!
 * zswhcb-portal
 * Copyright(c) 2015 zswhcb-portal <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../settings');

var fs = require('fs'),
	path = require('path'),
	cwd = process.cwd(),
	qs = require('querystring'),
	velocity = require('velocityjs');

var title = '郑州镭光科技发展有限公司',
	virtualPath = '/';

exports.indexUI = function(req, res, next){
	res.render('Index', {
		title: title,
		description: '',
		keywords: ',Bootstrap3,nodejs,express,javascript,java,xhtml,html5',
		virtualPath: virtualPath,
		cdn: conf.cdn
	});
};

var sql = 'SELECT * FROM m_mobile WHERE id >= ((SELECT MAX(id) FROM m_mobile)-(SELECT MIN(id) FROM m_mobile)) * RAND() + (SELECT MIN(id) FROM m_mobile) LIMIT 3';

var http = require('http');

exports.sendSMS = function(req, res, next){
	var result = { success: false },
		data = req._data;

	data = {
		Account: 'leiguang0371',
		Password: '818287',
		Content: '121',
		Phones: '13837186852,18530053050',
		Channel: '5'
	};

	console.log(data)

	pool.getConnection(function (err, conn) {
		if(err) throw err;
		conn.query(sql, function (err, rows, fields){
			if(err) throw err;

			for (var i in rows) {
				console.log(rows[i]);
			}

			conn.release();


			/* http post */

			// var opt = {
			// 	host: '112.2.36.53',
			// 	port: 8091,
			// 	method: 'POST',
			// 	path: '/SendSms.asp',
			// 	headers: {
			// 		'Content-Type': 'application/x-www-form-urlencoded',
			// 		'Content-Length': data.length
			// 	}
			// }

			// var body = '';
			// var req = http.request(opt, function (res) {
			// 	console.log('STATUS: ' + res.statusCode);
			// 	console.log('HEADERS: ' + JSON.stringify(res.headers));
			// 	res.setEncoding('utf8');
			// 	res.on('data', function (chunk) {
			// 		console.log('BODY: ' + chunk);
			// 	});
			// }).on('error', function (ex) {
			// 	console.log("Got error: " + ex.message);
			// })

			// req.write(require('querystring').stringify(data));
			// req.end();

			/**/


			var postData = require('querystring').stringify({
				Account: 'leiguang0371',
				Password: '818287',
				Content: '龙湖名郡',
				Phones: '13837186852,18530053050',
				Channel: 5
			});

			var options = {
			  hostname: '112.2.36.53',
			  port: 8091,
			  path: '/SendSms.asp',
			  method: 'POST',
			  headers: {
			    'Content-Type': 'application/x-www-form-urlencoded',
			    'Content-Length': postData.length
			  }
			};

			var req = http.request(options, function(res) {
			  console.log('STATUS: ' + res.statusCode);
			  console.log('HEADERS: ' + JSON.stringify(res.headers));
			  res.setEncoding('utf8');
			  res.on('data', function (chunk) {
			    console.log('BODY: ' + chunk);
			  });
			});

			req.on('error', function(e) {
			  console.log('problem with request: ' + e.message);
			});

			// write data to request body
			req.write(postData);
			req.end();



			result.code = 2;
			result.msg = '账号或密码错误';
			res.send(result);
		});
	});
};


var mysql = require('mysql');

var pool = mysql.createPool({
	host: '127.0.0.1',
	user: 'root',
	password: 'password',
	database: 'sms',
	port: 22306
});