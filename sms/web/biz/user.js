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
 * 获取全部
 *
 * @params
 * @return
 */
exports.getAll = function(cb){
	mysql.query('SELECT a.* FROM s_user a ORDER BY a.CREATE_TIME DESC', null, function (err, rows){
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
	mysql.query('SELECT a.* FROM s_user a WHERE a.USER_NAME=?', [name], function (err, rows){
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
	mysql.query('SELECT a.* FROM s_user a WHERE a.id=?', [id], function (err, rows){
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
	this.findByName(newInfo.USER_NAME, function (err, doc){
		if(err) return cb(err);
		if(!!doc) return cb(null, 3, ['用户名已经存在', 'USER_NAME'], doc);
		// 开始添加
		mysql.query('INSERT INTO s_user (id, USER_NAME, PASSWORD, CORP_NAME, CREATE_TIME, IS_ENABLE) VALUES (?, ?, ?, ?, ?, ?)',
			[util.uuid(), newInfo.USER_NAME, md5.hex('123456'), newInfo.CORP_NAME, new Date(), newInfo.IS_ENABLE],
			function (err, status){
				if(err) return cb(err);
				cb(null, null, null, status.changedRows);
		});
	});
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
		mysql.query('UPDATE s_user SET PASSWORD=? WHERE id=?',
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
	var sql = 'UPDATE s_user SET CORP_NAME=?, IS_ENABLE=? WHERE id=?';
	mysql.query(sql, [newInfo.CORP_NAME, newInfo.IS_ENABLE, newInfo.id], function (err, result){
		if(err) return cb(err);
		cb(null, result.changedRows);
	});
};

/**
 * 编辑
 *
 * @params
 * @return
 */
exports.remove = function(ids, cb){
	var sql = 'DELETE FROM s_user where id IN (""';
	for(var i in ids){
		sql += ', ?'
	}
	sql += ')';
	// 开始删除
	mysql.query(sql, ids, function (err, result){
		if(err) return cb(err);
		cb(null, result.affectedRows);
	});
};

/**
 * 编辑
 *
 * @params
 * @return
 */
exports.resetPwd = function(ids, cb){
	var sql = 'UPDATE s_user SET PASSWORD="e10adc3949ba59abbe56e057f20f883e" where id IN (""';
	for(var i in ids){
		sql += ', ?'
	}
	sql += ')';
	// 开始删除
	mysql.query(sql, ids, function (err, result){
		if(err) return cb(err);
		cb(null, result.affectedRows);
	});
};