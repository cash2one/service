/*!
 * hnzswh-portal
 * Copyright(c) 2015 hnzswh-portal <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var back = {
	site: require('../controllers/back/site'),
	user: require('../controllers/back/user')
};

var str1 = '参数异常';

module.exports = function(app){
	/* back */
	app.get('/', back.user.login_validate, back.site.indexUI);

	app.post('/sendSMS$', valiPostData, back.user.login_validate, back.site.sendSMS);

	// user login
	app.get('/user/login$', back.user.loginUI);
	app.post('/user/login$', valiPostData, back.user.login);
	app.get('/user/login/success$', back.user.login_validate, back.user.login_success);
	app.get('/user/logout$', back.user.logoutUI);
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