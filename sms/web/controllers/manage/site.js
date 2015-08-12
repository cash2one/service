/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');


var EventProxy = require('eventproxy');

var biz = {
	user: require('../../biz/user'),
	send_plan: require('../../biz/send_plan')
};

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
	var ep = EventProxy.create('users', 'send_plan', function (users, send_plan){
		res.render('manage/sms/SendRecord/Index', {
			conf: conf,
			title: '发送记录 | 短信管理 | 后台管理 | '+ conf.corp.name,
			description: '',
			keywords: ',后台管理,Blog,Bootstrap3,nodejs,express,css,javascript,java,aspx,html5',
			data: {
				send_plan: send_plan,
				users: users
			}
		});
	});

	ep.fail(function (err){
		next(err);
	});

	biz.user.getAll(function (err, docs){
		if(err) return ep.emit('error', err);
		ep.emit('users', docs);
	});

	biz.send_plan.getAll(function (err, docs){
		if(err) return ep.emit('error', err);
		ep.emit('send_plan', docs);
	});
};