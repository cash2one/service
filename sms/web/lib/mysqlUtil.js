/*!
 * hnzswh-portal
 * Copyright(c) 2015 hnzswh-portal <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var db = require('../settings').db,
	pool = null;

var mysql = require('mysql');

function initPool(){
	pool  = mysql.createPool({
		connectionLimit: db.connectionLimit,
		host: db.host,
		user: db.user,
		password: db.pass,
		database: db.database,
		port: db.port
	});
}

exports.query = function(sql, params, cb){
	if(!pool) initPool();

	pool.getConnection(function (err, conn){
		if(err) return cb(err);
		conn.query(sql, params, function (err, rows, fields){
			conn.release();
			cb(err, rows, fields);
		});
	});
};

/**
 * 检测唯一性
 *
 * @param {Array} rows
 * @return {Boolean}
 */
exports.checkOnly = function(rows){
	return !!rows && 1 === rows.length;
}