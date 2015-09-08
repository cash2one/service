/*!
 * hnzswh-sms
 * Copyright(c) 2015 hnzswh-sms <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

module.exports = {
	MIN_SEND_NUM: process.env.MIN_SEND_NUM || 20,  // 最小发送量
	TEST_MOBILE_UP: process.env.TEST_MOBILE_UP || 2,  // 测试号上标200
	TEST_MOBILE_DOWN: process.env.TEST_MOBILE_DOWN || 3,  // 测试号下标200
	SEND_SMS: process.env.SEND_SMS || 'NO',  // 是否发送短信
	cookie: {
		secret: 'hnzswh'
	}, corp: {
		name: 'SMS 短信',
		website: 'http://www.dolalive.com/'
	}, mysql: {
		database: 'sms',
		host: '127.0.0.1',
		port: 22306,
		user: 'root',
		password: 'password',
		connectionLimit: 50
	}, html: {
		cdn: 'http://www.foreworld.net/js/',
		static_res: '/public/',
		external_res: 'http://www.foreworld.net/public/',
		pagesize: 10,
		cache_time: 1000 * 60 * 60
	}, mail: {
		secureConnection: true,
		host: 'smtp.163.com',
		port: 465,
		to: ['huangxin@foreworld.net'],
		auth: {
			user: 'firefrog@163.com',
			pass: '123333'
		}
	}
};