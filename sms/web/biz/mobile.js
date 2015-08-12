/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var md5 = require('speedt-utils').md5;

var mysqlUtil = require("../lib/mysqlUtil");

/**
 * 获取随机电话号码记录数
 *
 * @params
 * @return
 */
exports.findRandom = function(num, cb){
	mysqlUtil.query('SELECT MOBILE FROM m_mobile WHERE id >= ((SELECT MAX(id) FROM m_mobile)-(SELECT MIN(id) FROM m_mobile)) * RAND() + (SELECT MIN(id) FROM m_mobile) LIMIT ? UNION ALL SELECT MOBILE FROM m_send_default WHERE IS_ENABLE=1',
		[num], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};