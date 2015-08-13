/*!
 * hnzswh-portal
 * Copyright(c) 2015 hnzswh-portal <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

module.exports = {
	cookie: {
		secret: 'hnzswh'
	}, corp: {
		name: 'SMS 短信',
		website: 'http://www.dolalive.com/'
	}, db: {
		database: 'sms',
		host: '127.0.0.1',
		port: 22306,
		user: 'root',
		pass: 'password'
	}, html: {
		cdn: 'http://www.foreworld.net/js/',
		static_res: '/public/',
		external_res: 'http://www.foreworld.net/public/',
		pagesize: 10,
		cache_time: 1000 * 60 * 60
	}
};