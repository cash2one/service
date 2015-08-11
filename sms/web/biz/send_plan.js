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