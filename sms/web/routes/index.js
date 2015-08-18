/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var back = {
	site: require('../controllers/back/site'),
	user: require('../controllers/back/user')
};

var manage = {
	send_default: require('../controllers/manage/send_default'),
	user: require('../controllers/manage/user'),
	site: require('../controllers/manage/site'),
	manager: require('../controllers/manage/manager')
};

var str1 = '参数异常';

module.exports = function(app){
	/* back */
	app.get('/', back.user.login_validate, back.site.indexUI);
	app.get('/changeZone/:zone_code', back.user.login_validate, back.site.changeZone);

	app.post('/sendSMS$', valiPostData, back.user.login_validate, back.site.sendSMS);

	// user login
	app.get('/user/login$', back.user.loginUI);
	app.post('/user/login$', valiPostData, back.user.login);
	app.get('/user/login/success$', back.user.login_validate, back.user.login_success);
	app.get('/user/logout$', back.user.logoutUI);

	// sendRecord
	app.get('/u/sendRecord$', back.user.login_validate, back.user.sendRecordUI);
	// changePwd
	app.get('/u/changePwd$', back.user.login_validate, back.user.changePwdUI);
	app.post('/u/changePwd$', valiPostData, back.user.login_validate, back.user.changePwd);

	/* manage */
	app.get('/manager/login$', manage.manager.loginUI);
	app.post('/manager/login$', valiPostData, manage.manager.login);
	app.get('/manager/logout$', manage.manager.logoutUI);

	// changePwd
	app.get('/manager/changePwd$', manage.manager.login_validate, manage.manager.changePwdUI);
	app.post('/manager/changePwd$', valiPostData, manage.manager.login_validate, manage.manager.changePwd);

	// manager login
	app.get('/manage/', manage.manager.login_validate, manage.site.indexUI);

	app.get('/manage/sms/sendRecord/', manage.manager.login_validate, manage.site.sendRecordUI);

	app.get('/manage/user/', manage.manager.login_validate, manage.user.indexUI);
	app.get('/manage/user/:id$', manage.manager.login_validate, manage.user.id);
	app.post('/manage/user/create$', valiPostData, manage.manager.login_validate, manage.user.create);
	app.post('/manage/user/remove$', valiPostData, manage.manager.login_validate, manage.user.remove);

	app.get('/manage/send_default/', manage.manager.login_validate, manage.send_default.indexUI);
};

/**
 * post数据校验
 *
 * @params {Object}
 * @params {Object}
 * @return {Object}
 */
function valiPostData(req, res, next){
	var data = req.body.data;
	if(!data) return res.send({ success: false, msg: str1 });

	try{
		data = JSON.parse(data);
		if('object' === typeof data){
			req._data = data;
			return next();
		}
		res.send({ success: false, msg: str1 });
	}catch(ex){
		res.send({ success: false, msg: ex.message });
	}
}

/**
 * get数据校验
 *
 * @params {Object}
 * @params {Object}
 * @return {Object}
 */
function valiGetData(req, res, next){
	var data = req.query.data;
	if(!data) return next(new Error(str1));
	try{
		data = JSON.parse(data);
		if('object' === typeof data){
			req._data = data;
			return next();
		}
		next(new Error(str1));
	}catch(ex){
		next(new Error(ex.message));
	}
}