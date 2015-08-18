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

/**
 * 新增
 *
 * @params
 * @return
 */
exports.create = function(req, res, next){
	var result = { success: false },
		data = req._data;
	// 开始注册
	biz.user.register(data, function (err, status, msg, count){
		if(err) return next(err);
		if(!!status){
			result.msg = msg;
			return res.send(result);
		}
		result.success = true;
		res.send(result);
	});
};

/**
 * 删除
 *
 * @params
 * @return
 */
exports.remove = function(req, res, next){
	var result = { success: false },
		data = req._data;
	// 开始删除
	biz.user.remove(data.ids, function (err, count){
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
exports.id = function(req, res, next){
	var result = { success: false },
		id = req.params.id;
	biz.user.findById(id, function (err, doc){
		if(err) return next(err);
		/* result */
		result.success = !!doc;
		result.data = doc;
		res.send(result);
	});
};

/**
 *
 * @params
 * @return
 */
exports.edit = function(req, res, next){
	var result = { success: false },
		data = req._data;
	biz.user.editInfo(data, function (err, count){
		if(err) return next(err);
		result.success = !!count;
		res.send(result);
	});
};