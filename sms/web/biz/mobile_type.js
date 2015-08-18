/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
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
exports.findByZone = function(zone_id, cb){
	mysql.query('SELECT a.* FROM m_mobile_type a WHERE a.ZONE_ID=? ORDER BY SORT', [zone_id], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};