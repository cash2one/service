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
var iconv = require('iconv-lite');
var parseString = require('xml2js').parseString;
// var urlencode = require('urlencode');

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

	var postData = require('querystring').stringify({
		action: 'send',
		userid: 766,
		account: 'leiguang',
		password: 'zs818287',
		content: data.Content,
		mobile: '13837186852,18530053050',
		checkcontent: 0,
		Channel: 5
	});

	pool.getConnection(function (err, conn) {
		if(err) throw err;
		conn.query(sql, function (err, rows, fields){
			if(err) throw err;

			for (var i in rows) {
				console.log(rows[i]);
			}

			conn.release();

			/* http post */

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