/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var md5 = require('speedt-utils').md5;

var mysqlUtil = require("../lib/mysqlUtil");

/**
 * 获取全部
 *
 * @params
 * @return
 */
exports.getAll = function(cb){
	mysqlUtil.query('SELECT a.* FROM s_user a ORDER BY a.CREATE_TIME DESC', null, function (err, rows){
		if(err) return cb(err);
		cb(null, rows);
	});
};

/**
 * 用户登陆验证
 *
 * @params
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
	mysqlUtil.query('SELECT a.* FROM s_user a WHERE a.USER_NAME=?', [name], function (err, rows){
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
	mysqlUtil.query('SELECT a.* FROM s_user a WHERE a.id=?', [id], function (err, rows){
		if(err) return cb(err);
		cb(null, (1 === rows.length) ? rows[0] : null);
	});
};

/**
 * 用户注册
 *
 * @params
 * @return
 */
exports.register = function(newInfo, cb){
	// TODO
};

/**
 * 修改密码
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
		mysqlUtil.query('UPDATE s_user SET PASSWORD=? WHERE id=?',
			[md5.hex(newPass), user_id], function (err, status){
			if(err) return cb(err);
			cb(null, null, null, status.changedRows);
		});
	});
};

/**
 * 编辑
 *
 * @params
 * @return
 */
exports.editInfo = function(newInfo, cb){
	// TODO
};