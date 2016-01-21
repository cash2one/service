/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../../settings');

var path = require('path'),
	fs = require('fs'),
	velocity = require('velocityjs'),
	cwd = process.cwd();

var EventProxy = require('eventproxy');

var macros = require('../../lib/macro');

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

//	biz.send_plan.getAll(function (err, docs){
//		if(err) return ep.emit('error', err);
//		ep.emit('send_plan', docs);
//	});

	ep.emit('send_plan', null);
};

/**
 *
 * @params
 * @return
 */
exports.sendRecordUI_ByUser = function(req, res, next){
	var result = { success: false },
		user_id = req.params.user_id;

	// 查找该用户的发送计划
	biz.send_plan.getAllByUser(user_id, function (err, docs){
		if(err){
			result.msg = err;
			return res.send(result);
		}

		exports.getTemplate(function (err, template){
			if(err){
				result.msg = err;
				return res.send(result);
			}

			var html = velocity.render(template, {
				conf: conf,
				data: {
					send_plan: docs
				}
			}, macros);

			result.success = true;
			result.data = html;
			res.send(result);
		});
	});
};

(function (exports){
	/**
	 * 获取模板
	 *
	 * @params
	 * @return
	 */
	exports.getTemplate = function(cb){
		fs.readFile(path.join(cwd, 'views', 'manage', 'sms', 'SendRecord', '_pagelet', 'Side.List.html'), 'utf8', function (err, template){
			if(err) return cb(err);
			cb(null, template);
		});
	};
})(exports);

/**
 *
 * @params
 * @return
 */
exports.create = function(req, res, next){
	var result = { success: false },
		data = req._data;
	var user = req.session.user;

	data.PLAN_TIME = data.PLAN_TIME || new Date();
	// 开始注册
	biz.send_plan.create(data, function (err, count){
		if(err) return next(err);
		result.success = true;
		res.send(result);
	});
};

/**
 *
 * @params
 * @return
 */
exports.remove = function(req, res, next){
	var result = { success: false },
		data = req._data;
	// 开始删除
	biz.send_plan.remove(data.ids, function (err, count){
		if(err) return next(err);
		result.success = true;
		res.send(result);
	});
};