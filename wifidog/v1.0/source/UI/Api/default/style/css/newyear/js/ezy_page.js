
	/**判断 当页面高度不足屏幕窗口高度时， 强制设置高度为窗口高度**/
	var xiangmu_hi;
	var delta=0;	
	$(document).ready(function(){
		if(document.height<window.innerHeight){
			document.height=window.innerHeight;	
		}
		//$(".MainIconArea li").width($(".MainIconArea").width()*0.2499999999);
		//$("#Regform dl button").css("transition","background-color 2s linear 2s,width 2s linear 2s,height 2s linear 2s");
	});
//判断 浏览器窗口变化时 调用方法
jQuery(window).resize(function(){
	//$(".MainIconArea li").width($(".MainIconArea").width()*0.2499999999);
});

$(window).scroll(function(){
	var t = $(window).scrollTop();
	/**ScrollUp**/
	if(t>300){$("#scrollup").fadeIn(300);}else{$("#scrollup").fadeOut(300);}
	if(t<10){$("#remark").animate({right:"-55px"},{queue:false, duration:300});
		$("#historygoback").animate({left:"-55px"},{queue:false, duration:300});}

	if(delta>t){
		$("#remark").animate({right:"0"},{queue:false, duration:300});
		$("#historygoback").animate({left:"0"},{queue:false, duration:300});
	}else{
		$("#remark").animate({right:"-55px"},{queue:false, duration:300});
		$("#historygoback").animate({left:"-55px"},{queue:false, duration:300});
	}
	delta=t;
	
});
$(function(){
	/**登录**/
	$("#login_out i.login,.yhdl a").click(function(){
		$("#Loginform").animate({top:"80px"},{queue:false, duration:500});
		$("#shadelayer").fadeIn(300);
	});
	$(".Cancel, #shadelayer").click(function(){
		$("#Loginform").animate({top:"-300px"},{queue:false, duration:500});
		$("#remarkform").animate({bottom:"-280px"},{queue:false, duration:500});
		$("#shadelayer").fadeOut(300);
	});
	/***发表评论 **/
	$(".khly a").click(function(){
		$("#remarkform").animate({bottom:"0"},{queue:false, duration:500});
		$("#shadelayer").fadeIn(300);
		
	});
	$(".cancelthisform, #shadelayer").click(function(){
		$("#remarkform").animate({bottom:"-280px"},{queue:false, duration:500});
		$("#shadelayer").fadeOut(300);
		
	});
	/**查看更多 打开**/
	$(".hi-l a.openmore").click(function(){
		if($(this).hasClass("openmore_hover")){
			$(this).removeClass("openmore_hover");
			$(this).parent().find(".hi-contxt").animate({height:"100px"},{queue:false, duration:500});
		}else{
			$(this).addClass("openmore_hover");
			$(this).parent().find(".hi-contxt").animate({height:+xiangmu_hi+"px"},{queue:false, duration:500});
		}
	});
})