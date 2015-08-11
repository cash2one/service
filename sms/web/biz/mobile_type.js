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
exports.findByZone = function(zone_id, cb){
	mysqlUtil.query('SELECT a.* FROM m_mobile_type a WHERE a.ZONE_ID=? ORDER BY SORT', [zone_id], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};