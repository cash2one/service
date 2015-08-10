/*!
 * blog
 * Copyright(c) 2015 foreworld.net <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var util = require('speedt-utils'),
	EventProxy = require('eventproxy'),
	path = require('path'),
	cwd = process.cwd();

var conf = require('../../settings');

var biz = {
	user: require('../../biz/user')
};

/**
 *
 * @params
 * @return
 */
exports.loginUI = function(req, res, next){

	res.render('back/user/Login', {
		conf: conf,
		title: '用户登陆 | '+ conf.corp.name,
		description: '',
		keywords: ',Blog,Bootstrap3,nodejs,express,css,javascript,java,aspx,html5',
		loginState: 2 === req.session.lv,
		refererUrl: escape(req.url)
	});
};

/**
 * 用户登陆
 *
 * @params
 * @return
 */
exports.login = function(req, res, next){
	var result = { success: false },
		data = req._data;

	biz.user.login(data, function (err, status, msg, doc){
		if(err) return next(err);
		if(!!status){
			result.msg = msg;
			return res.send(result);
		}
		/* session */
		req.session.lv = 2;
		req.session.userId = doc.id;
		req.session.role = 'user';
		req.session.user = doc;
		/* result */
		result.success = true;
		res.send(result);
	});
};

/**
 * 用户登陆成功
 *
 * @params
 * @return
 */
exports.login_success = function(req, res, next){
	var user = req.session.user;
	res.redirect('/');
};

/**
 * 用户会话验证
 *
 * @params
 * @return
 */
exports.login_validate = function(req, res, next){
	if(2 === req.session.lv) return next();
	if(req.xhr) return next(new Error('无权访问'));
	res.redirect('/user/login?refererUrl='+ req.url);
};

/**
 *
 * @params
 * @return
 */
exports.logoutUI = function(req, res, next){
	req.session.destroy();
	res.redirect('/user/login');
};

/**
 *
 * @params
 * @return
 */
exports.editUI = function(req, res, next){
	// TODO
};

/**
 *
 * @params
 * @return
 */
exports.edit = function(req, res, next){
	// TODO
};

/**
 *
 * @params
 * @return
 */
exports.changePwdUI = function(req, res, next){
	// TODO
};

/**
 *
 * @params
 * @return
 */
exports.changePwd = function(req, res, next){
	// TODO
};