/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var md5 = require('speedt-utils').md5;

var mysqlUtil = require("../lib/mysqlUtil");

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
		return cb(null, (1 === rows.length) ? rows[0] : null);
	});
};

/**
 *
 * @params
 * @return
 */
exports.findById = function(id, cb){
	// TODO
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
	// TODO
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