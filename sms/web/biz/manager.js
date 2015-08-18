/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var util = require('speedt-utils'),
	md5 = util.md5,
	mysql = util.mysql;

/**
 * 用户登陆
 *
 * @params {Object} logInfo 用户登陆信息
 * @params {Function} cb 回调函数
 * @return
 */
exports.login = function(logInfo, cb){
	this.findByName(logInfo.UserName, function (err, doc){
		if(err) return cb(err);
		if(!doc) return cb(null, 3, ['找不到该用户。', 'UserName']);
		if(md5.hex(logInfo.UserPass) !== doc.PASSWORD)
			return cb(null, 6, ['用户名或密码输入错误。', 'UserPass'], doc);
		cb(null, null, null, doc);
	});
};

/**
 * 查找用户通过用户名
 *
 * @params
 * @return
 */
exports.findByName = function(name, cb){
	mysql.query('SELECT a.* FROM s_manager a WHERE a.USER_NAME=?', [name], function (err, rows){
		if(err) return cb(err);
		cb(null, (1 === rows.length) ? rows[0] : null);
	});
};

/**
 * 
 * @params
 * @return
 */
exports.findById = function(id, cb){
	mysql.query('SELECT a.* FROM s_manager a WHERE a.id=?', [id], function (err, rows){
		if(err) return cb(err);
		cb(null, (1 === rows.length) ? rows[0] : null);
	});
};

/**
 * 
 * @params
 * @return
 */
exports.changePwd = function(user_id, oldPass, newPass, cb){
	this.findById(user_id, function (err, doc){
		if(err) return cb(err);
		if(!doc) return cb(null, 3, ['找不到该用户。', 'UserName']);
		if(md5.hex(oldPass) !== doc.PASSWORD)
			return cb(null, 6, ['原始密码输入错误。', 'OldPass'], doc);
		// 开始更新密码
		mysql.query('UPDATE s_manager SET PASSWORD=? WHERE id=?',
			[md5.hex(newPass), user_id], function (err, status){
			if(err) return cb(err);
			cb(null, null, null, status.changedRows);
		});
	});
};