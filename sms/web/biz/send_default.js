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
exports.getAll = function(cb){
	mysql.query('SELECT * FROM m_send_default ORDER BY IS_ENABLE DESC', null, function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};