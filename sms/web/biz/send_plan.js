/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var util = require('speedt-utils'),
	mysql = util.mysql;

/**
 *
 * @params
 * @return
 */
exports.getAllByUser = function(user_id, cb){

	mysql.query('SELECT * FROM m_send_plan WHERE USER_ID=? ORDER BY PLAN_TIME DESC', [user_id], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};

/**
 *
 * @params
 * @return
 */
exports.getAll = function(cb){
	mysql.query('SELECT * FROM m_send_plan ORDER BY PLAN_TIME DESC', null, function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};

/**
 *
 * @params
 * @return
 */
exports.findFirstByUser = function(user_id, cb){
	mysql.query('SELECT * FROM m_send_plan WHERE IS_USED=0 AND USER_ID=? AND PLAN_TIME<? ORDER BY PLAN_TIME LIMIT 1',
		[user_id, new Date()], function (err, docs){
		if(err) return cb(err);
		cb(null, 1 === docs.length ? docs[0] : null);
	});
};

/**
 *
 * @params
 * @return
 */
exports.editUsedStatus = function(data, cb){
	mysql.query('UPDATE m_send_plan SET IS_USED=1, SEND_TIME=?, SEND_CONTENT=?, SEND_COUNT=?, SEND_MOBILE=?, SEND_TEST_COUNT=? WHERE id=?',
		[new Date(), data.SEND_CONTENT, data.SEND_COUNT, data.SEND_MOBILE, data.SEND_TEST_COUNT, data.id], function (err, status){
		if(err) return cb(err);
		cb(null, status.changedRows);
	});
};

/**
 *
 * @params
 * @return
 */
exports.findSendRecordByUser = function(user_id, cb){
	var sql = 'SELECT * FROM m_send_plan WHERE IS_USED=1 AND USER_ID=? ORDER BY SEND_TIME DESC';
	mysql.query(sql, [user_id], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};

/**
 *
 * @params
 * @return
 */
exports.create = function(newInfo, cb){
	// 开始添加
	mysql.query('INSERT INTO m_send_plan (id, PLAN_NAME, PLAN_NUM, PLAN_TIME, RATIO, TEST_RATIO, USER_ID, IS_USED) VALUES (?, ?, ?, ?, ?, ?, ?, 0)',
		[util.uuid(), newInfo.PLAN_NAME, newInfo.PLAN_NUM, newInfo.PLAN_TIME, newInfo.RATIO, newInfo.TEST_RATIO, newInfo.USER_ID],
		function (err, status){
			if(err) return cb(err);
			cb(null, null, null, status.changedRows);
	});
};

/**
 *
 * @params
 * @return
 */
exports.remove = function(ids, cb){
	var sql = 'DELETE FROM m_send_plan where id IN (""';
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