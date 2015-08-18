/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var util = require('speedt-utils'),
	EventProxy = require('eventproxy'),
	path = require('path'),
	cwd = process.cwd();

var conf = require('../../settings');

var biz = {
	send_plan: require('../../biz/send_plan'),
	user: require('../../biz/user')
};

/**
 *
 * @params
 * @return
 */
function getTopMessage(req){
	var user = req.session.user;
	var t = new Date();
	var y = t.getFullYear();
	var m = util.padLeft(t.getMonth() + 1, '0', 2);
	var d = util.padLeft(t.getDate(), '0', 2);
	return '欢迎您，'+ user.CORP_NAME +'。今天是'+ y +'年'+ m +'月'+ d +'日。';
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
		// 判断是否禁用
		if(0 === doc.IS_ENABLE){
			result.msg = '用户登陆已被禁用，请与管理员联系!';
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
	var result = { success: false };
	if(req.xhr){
		result.status = 'timeout';
		return res.send(result);
	}
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
	res.render('back/user/ChangePwd', {
		conf: conf,
		title: conf.corp.name,
		topMessage: getTopMessage(req),
		description: '',
		keywords: ',Bootstrap3,nodejs,express,javascript,java,xhtml,html5',
		loginState: 2 === req.session.lv
	});
};

/**
 *
 * @params
 * @return
 */
exports.changePwd = function(req, res, next){
	var result = { success: false },
		data = req._data;
	var user = req.session.user;

	if(!data.NewPass || 0 === data.NewPass.trim().length){
		result.msg = ['新密码不能为空。', 'NewPass'];
		return res.send(result);
	}

	if(data.NewPass !== data.NewPass2){
		result.msg = ['两次输入的新密码不一致。', 'NewPass'];
		return res.send(result);
	}

	biz.user.changePwd(user.id, data.OldPass, data.NewPass, function (err, status, msg, count){
		if(err) return next(err);
		result.success = !status;
		result.msg = msg;
		res.send(result);
	});
};

/**
 *
 * @params
 * @return
 */
exports.sendRecordUI = function(req, res, next){
	var user = req.session.user;

	biz.send_plan.findSendRecordByUser(user.id, function (err, docs){
		if(err) return next(err);

		res.render('back/user/SendRecord', {
			conf: conf,
			title: conf.corp.name,
			topMessage: getTopMessage(req),
			description: '',
			keywords: ',Bootstrap3,nodejs,express,javascript,java,xhtml,html5',
			loginState: 2 === req.session.lv,
			data: {
				sendRecord: docs
			}
		});
	});
};