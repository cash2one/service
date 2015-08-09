/* 
Document: common.js 
Created on: 2013-03-14,14:25;
Author: kimixyz
Description: 全站通用脚本
*/
(function () {
    // 适应安卓手机
    if (navigator.userAgent.match(/Android/i)) {
        var vmeta = document.getElementsByName("viewport")[0];
        vmeta.content = "width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no";
    }
    var isTouch = ('ontouchstart' in window);
    var touchStartEvent = isTouch ? "touchstart" : "mousedown";
    var touchEndEvent = isTouch ? "touchend" : "mouseup";
   

    function linkbtnClick(dom) {
        dom.addEventListener(touchStartEvent, function () {
            event.stopPropagation();
        }, false);
        dom.addEventListener(touchEndEvent, function () {
            event.stopPropagation();
        }, false);
    };
    var linkbtn = document.getElementById("linkbtn");
    linkbtn && linkbtnClick(linkbtn);

    function bodyClick(dom) {
        dom.addEventListener(touchStartEvent, function () {
            event.stopPropagation();
        }, false);
        dom.addEventListener(touchEndEvent, function () {
            var linkbtn = document.getElementById("linkbtn");
            if(linkbtn && linkbtn.length) {
                linkbtn.style.display = "none";
            }
            event.stopPropagation();
        }, false);
    };
    var body = document.getElementsByTagName("body")[0];
    body && bodyClick(body);

    // 横竖屏切换bug
    if (/iPhone/.test(navigator.userAgent) &&
   !/Opera Mini/.test(navigator.userAgent)) {
        window.addEventListener("orientationchange", function (e) {
            var s = document.documentElement.style;
            s.display = 'none';
            setTimeout(function () { s.display = 'block'; }, 0);
        });
    }


})();
