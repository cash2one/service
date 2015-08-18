/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var util = require('speedt-utils'),
	mysql = util.mysql;

/**
 * 获取区列表
 *
 * @params
 * @return
 */
exports.findRegions = function(city_code, cb){
	this.findCitys(city_code, function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};

/**
 * 获取市列表
 *
 * @params
 * @return
 */
exports.findCitys = function(province_code, cb){
	mysql.query('SELECT a.* FROM m_zone a WHERE a.PID=? ORDER BY SORT', [province_code], function (err, docs){
		if(err) return cb(err);
		cb(null, docs);
	});
};