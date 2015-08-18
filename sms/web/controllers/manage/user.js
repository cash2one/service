/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');

var EventProxy = require('eventproxy');

var biz = {
	user: require('../../biz/user')
};

/**
 *
 * @params
 * @return
 */
exports.indexUI = function(req, res, next){
	biz.user.getAll(function (err, docs){
		if(err) return next(err);

		res.render('manage/user/Index', {
			conf: conf,
			title: '客户管理 | 系统管理 | '+ conf.corp.name,
			description: '',
			keywords: '',
			data: {
				users: docs
			}
		});
	});
};