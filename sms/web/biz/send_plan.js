/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var md5 = require('speedt-utils').md5;

var mysqlUtil = require("../lib/mysqlUtil");

/**
 *
 * @params
 * @return
 */
exports.findFirstByUser = function(user_id, cb){
	mysqlUtil.query('SELECT * FROM m_send_plan WHERE IS_USED=0 AND USER_ID=? ORDER BY PLAN_TIME LIMIT 1', [user_id], function (err, docs){
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
	mysqlUtil.query('UPDATE m_send_plan SET IS_USED=1, SEND_TIME=?, SEND_CONTENT=?, SEND_COUNT=?, SEND_MOBILE=? WHERE id=?',
		[new Date(), data.Content, data.Count, data.Mobiles, data.id], function (err, status){
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
	mysqlUtil.query(sql, [user_id], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};