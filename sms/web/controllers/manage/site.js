/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');

/**
 *
 * @params
 * @return
 */
exports.indexUI = function(req, res, next){
	res.render('manage/Index', {
		conf: conf,
		title: '后台管理 | '+ conf.corp.name,
		description: '',
		keywords: ',后台管理,Blog,Bootstrap3,nodejs,express,css,javascript,java,aspx,html5'
	});
};

/**
 *
 * @params
 * @return
 */
exports.sendRecordUI = function(req, res, next){
	res.render('manage/sms/SendRecord', {
		conf: conf,
		title: '发送记录 | 短信管理 | 后台管理 | '+ conf.corp.name,
		description: '',
		keywords: ',后台管理,Blog,Bootstrap3,nodejs,express,css,javascript,java,aspx,html5'
	});
};