/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var util = require('speedt-utils'),
	mysql = util.mysql;

/**
 * 获取随机电话号码记录数
 *
 * @params
 * @return
 */
exports.findRandom = function(zone_id, num, cb){
	mysql.query('SELECT MOBILE FROM m_mobile WHERE ZONE_ID=? AND id >= ((SELECT MAX(id) FROM m_mobile)-(SELECT MIN(id) FROM m_mobile)) * RAND() + (SELECT MIN(id) FROM m_mobile) LIMIT ? UNION ALL SELECT MOBILE FROM m_send_default WHERE IS_ENABLE=1',
		[zone_id, num], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};