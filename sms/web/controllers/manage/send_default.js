/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');

var EventProxy = require('eventproxy');

var biz = {
	send_default: require('../../biz/send_default')
};

/**
 *
 * @params
 * @return
 */
exports.indexUI = function(req, res, next){
	biz.send_default.getAll(function (err, docs){
		if(err) return next(err);

		res.render('manage/send_default/Index', {
			conf: conf,
			title: '默认发送 | 短信管理 | '+ conf.corp.name,
			description: '',
			keywords: '',
			data: {
				users: docs
			}
		});
	});
};