/*!
 * zswhcb-portal
 * Copyright(c) 2015 zswhcb-portal <3203317@qq.com>
 * MIT Licensed
 */
'use strict';

var conf = require('../settings');

var fs = require('fs'),
	path = require('path'),
	cwd = process.cwd(),
	qs = require('querystring'),
	velocity = require('velocityjs');

var title = '河南正森文化传播有限公司',
	virtualPath = '/';

exports.indexUI = function(req, res, next){
	res.render('Index', {
		title: title,
		description: '',
		keywords: ',Bootstrap3,nodejs,express,javascript,java,xhtml,html5',
		virtualPath: virtualPath,
		cdn: conf.cdn
	});
};