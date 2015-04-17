/*H-ui.js date:17:40 2014-5-5 by:guojunhui*/
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement("style")
  msViewportStyle.appendChild(
    document.createTextNode(
      "@-ms-viewport{width:auto!important}"
    )
  )
  document.getElementsByTagName("head")[0].appendChild(msViewportStyle)
}

/*添加收藏
<a title="收藏本站" href="javascript:addFavoritepage(0);">收藏本站</a>
*/
var webName ="H-ui前端框架";
var webSite ="http://www.h-ui.net/";
/*收藏主站*/
function addFavorite(){try{window.external.addFavorite(webSite,webName);}catch(e){try{window.sidebar.addPanel(webName,webSite,"");}catch(e){alert("加入收藏失败，请使用Ctrl+D进行添加");}}}
/*收藏页面
<a title="收藏本页" href="javascript:addFavoritepage(0);">收藏本页</a>
*/
function addFavoritepage(){var sURL=window.location.href;var sTitle=document.title;try{window.external.addFavorite(sURL,sTitle);}catch(e){try{window.sidebar.addPanel(sTitle,sURL,"");}catch(e){alert("加入收藏失败，请使用Ctrl+D进行添加");}}}
/*设为首页*/
function setHome(obj){
  try{obj.style.behavior="url(#default#homepage)";obj.setHomePage(webSite);}
  catch(e){if(window.netscape){
	  try {netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");}
	  catch(e){alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入\"about:config\"并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");}
	  var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
	  prefs.setCharPref('browser.startup.homepage',url);}}
}
/*滚动*/
function marquee(height,speed,delay){
	var scrollT;
	var pause = false;
	var ScrollBox = document.getElementById("marquee");
	if(document.getElementById("holder").offsetHeight <= height) return;
	var _tmp = ScrollBox.innerHTML.replace('holder', 'holder2')
	ScrollBox.innerHTML += _tmp;
	ScrollBox.onmouseover = function(){pause = true}
	ScrollBox.onmouseout = function(){pause = false}
	ScrollBox.scrollTop = 0;
	function start(){
	    scrollT = setInterval(scrolling,speed);
	    if(!pause) ScrollBox.scrollTop += 2;
	}
	function scrolling(){
	    if(ScrollBox.scrollTop % height != 0){
	        ScrollBox.scrollTop += 2;
	        if(ScrollBox.scrollTop >= ScrollBox.scrollHeight/2) ScrollBox.scrollTop = 0;
	    }
		else{
	        clearInterval(scrollT);
	        setTimeout(start,delay);
	    }
	}
	setTimeout(start,delay);
}
/*iframe 自适应宽高*/
function iframesize(obj) {
	var pTar = null;
	if (document.getElementById){
		pTar = document.getElementById(obj);
	}
	else{
		eval('pTar = ' + obj + ';');
	}
	if (pTar && !window.opera){
		/*begin resizing iframe */
		pTar.style.display="block";
		if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight){
			/*ns6 syntax*/
			pTar.height = pTar.contentDocument.body.offsetHeight +20;
			pTar.width = pTar.contentDocument.body.scrollWidth+20;
		}
		else if (pTar.Document && pTar.Document.body.scrollHeight){
			/*ie5+ syntax*/
			pTar.height = pTar.Document.body.scrollHeight;
			pTar.width = pTar.Document.body.scrollWidth;
		}
	}
}
/*<iframe src ="" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="id" name="ifm" onload="javascript:iframesize('id');" width="100%"></iframe>*/

/*隐藏显示密码*/
(function ( $ ) {
    $.fn.togglePassword = function( options ) {
        var s = $.extend( $.fn.togglePassword.defaults, options ),
        input = $( this );

        $( s.el ).bind( s.ev, function() {
            "password" == $( input ).attr( "type" ) ?
                $( input ).attr( "type", "text" ) :
                $( input ).attr( "type", "password" );
        });
    };

    $.fn.togglePassword.defaults = {
        ev: "click"
    };
}( jQuery ));

/*jQuery脚本*/
$(function(){	
	/*hover*/
	jQuery.HUIhover =function(obj) {
		$(obj).hover(function(){$(this).addClass("hover");},function(){$(this).removeClass("hover");});
	};
	
	/*表单得到失去焦点*/
	jQuery.HUIfocusblur = function(obj) {
        $(obj).focus(function() {$(this).addClass("focus").removeClass("inputError");});
        $(obj).blur(function() {$(this).removeClass("focus");});
    };
    $.HUIfocusblur(".input_text,.textarea");
	
	/*模拟下拉菜单*/
	jQuery.HUIselect = function(divselectid,inputselectid) {
		var inputselect = $(inputselectid);
		$(divselectid+" cite").click(function(){
			var ul = $(divselectid+" ul");
			ul.slideToggle();
		});
		$(divselectid+" ul li a").click(function(){
			var txt = $(this).text();
			$(divselectid+" cite").html(txt);
			var value = $(this).attr("selectid");
			inputselect.val(value);
			$(divselectid+" ul").hide();
		});
		$(document).click(function(){$(divselectid+" ul").hide();});
	};
	$.HUIselect("#divselect","#inputselect");
	
	/*tab选项卡*/
	jQuery.HUItab =function(tabBar,tabCon,class_name,tabEvent){
	  	var $tab_menu=$(tabBar);
		// 初始化操作
		$tab_menu.removeClass(class_name);
		$(tabBar+":first").addClass(class_name);
		$(tabCon).hide();
		$(tabCon+":first").show();
		
		$tab_menu.bind(tabEvent,function(){
			$tab_menu.removeClass(class_name);
			$(this).addClass(class_name);
			var index=$tab_menu.index(this);
			$(tabCon).hide();
			$(tabCon).eq(index).show();
		});
	}
	/*折叠*/
	jQuery.HUIfold = function(obj,obj_c,speed,obj_type,Event){
		if(obj_type == 2){
				$(obj+":first").find("b").html("-");
				$(obj_c+":first").show();
			}			
		$(obj).bind(Event,function(){
			if($(this).next().is(":visible")){
				if(obj_type == 2){
						return false;
				}else{
					$(this).next().slideUp(speed).end().removeClass("selected");
					$(this).find("b").html("+");
					
				}
			}
			else{
				if(obj_type == 3){
						$(this).next().slideDown(speed).end().addClass("selected");
						$(this).find("b").html("-");
					}else{
							$(obj_c).slideUp(speed);
							$(obj).removeClass("selected");
							$(obj).find("b").html("+");
							$(this).next().slideDown(speed).end().addClass("selected");
							$(this).find("b").html("-");
						}		
				
			}
		});
	}
	/*全选*/
	
	/*下拉菜单*/
	$.HUIhover('.dropDown');
	$(".dropDown_click").click(function(){$(".dropDown").removeClass('open');if($(this).hasClass('open')){$(this).removeClass('open');}else{$(this).addClass('open');} return false});
	$("body").click(function(){$(".dropDown").removeClass('open');});
	$(".dropDown-menu li a").click(function(){$(".dropDown").removeClass('open');});
	$(".dropDown_hover").hover(function(){$(this).addClass("open");},function(){$(this).removeClass("open");});
	
	/*左侧菜单*/	
	$(".menu_dropdown dl dt").click(function(){if($(this).parent("dl").hasClass('selected')){$(this).parent("dl").removeClass('selected');}else{$(this).parent("dl").addClass("selected");}});
	/*文本框*/
	$(".placeholder").click(function(){$(this).hide();$(this).parents("p").find(".input_text").focus();});
	/*得到焦点*/
	function inputfocus(obj){if($(obj).val()==""){$(obj).parent().find(".placeholder").hide();}}
	/*失去焦点*/
	function inputblur(obj){if($(obj).val()==""){$(obj).parent().find(".placeholder").show();}}
		
	/*搜索框*/
	$.HUIfocusblur('.searchTxt');
	$.HUIhover('.ac_results li');
	$(".ac_results li").click(function (event){
		$(".searchTxt").addClass("focus").val($(this).find("p").text());
		$(".ac_results").hide();
		//$(".form-search").submit();/*提交表单*/
		b_onclick();/*临时测试*/
		return false;
	});
	$(".searchTxt").focus(function(){$(".ac_results").show();return false;});
	$(".ac_results").blur(function(){$(this).hide();});
	$("body").click(function(){$(".ac_results").hide();});
	$(".searchTxt").click(function(){$(".ac_results").show();return false;});
	function BindEnter(obj){
    	var searchBtn = $("#searchBtn");
    	if(obj.keyCode == 13){searchBtn.click();obj.returnValue = false;}
	}

	/*返回顶部*/
	var $backToTopTxt="返回顶部";
	$backToTopEle=$('<a href="javascript:void(0)" class="toTop" title=backToTopTxt alt=backToTopTxt></a>').appendTo($("body")).text($backToTopTxt).attr("title", $backToTopTxt).click(function(){$("html, body").animate({ scrollTop: 0 }, 120);}), $backToTopFun = function() {var st = $(document).scrollTop(), winh = $(window).height();(st > 0)? $backToTopEle.show(): $backToTopEle.hide();/*IE6下的定位*/if(!window.XMLHttpRequest){$backToTopEle.css("top", st + winh - 166);}};
	$(window).bind("scroll", $backToTopFun);
	$backToTopFun();
	
	/*tag标签*/
	var tags_a = $(".tags a");
	tags_a.each(function(){
		var x = 9;
		var y = 0;
		var rand = parseInt(Math.random() * (x - y + 1) + y);
		$(this).addClass("tags"+rand);
	});
		
	/*对联广告*/
	var dual = $(".dual");
	var dual_close = $("a.dual_close");	
	var screen_w = screen.width;
	if(screen_w>1024){dual.show();}
	$(window).scroll(function(){
		var scrollTop = $(window).scrollTop();
		dual.stop().animate({top:scrollTop+260});
	});
	dual_close.click(function(){
		$(this).parent().hide();
		return false;
	});
	/*资讯详情页 字号变化*/
	$("#fontbig").click(function(){$("#fontSmall").css("color","#0B3B8C");$(this).css("color","#666");$("#cnt_main_article").css("font-size","18px");});
	$("#fontSmall").click(function(){$("#fontbig").css("color","#0B3B8C");$(this).css("color","#666");$("#cnt_main_article").css("font-size","14px");});

	/*顶部展开定时自动关闭广告*/ 
	$("#banner").slideDown("slow");

});
function displayimg(){
	$("#banner").slideUp(1000,function(){
		$("#top").slideDown(1000);
	});
}
setTimeout("displayimg()",4000);
/*$().resize()*/
(function($,h,c){var a=$([]),e=$.resize=$.extend($.resize,{}),i,k="setTimeout",j="resize",d=j+"-special-event",b="delay",f="throttleWindow";e[b]=250;e[f]=true;$.event.special[j]={setup:function(){if(!e[f]&&this[k]){return false}var l=$(this);a=a.add(l);$.data(this,d,{w:l.width(),h:l.height()});if(a.length===1){g()}},teardown:function(){if(!e[f]&&this[k]){return false}var l=$(this);a=a.not(l);l.removeData(d);if(!a.length){clearTimeout(i)}},add:function(l){if(!e[f]&&this[k]){return false}var n;function m(s,o,p){var q=$(this),r=$.data(this,d);r.w=o!==c?o:q.width();r.h=p!==c?p:q.height();n.apply(this,arguments)}if($.isFunction(l)){n=l;return m}else{n=l.handler;l.handler=m}}};function g(){i=h[k](function(){a.each(function(){var n=$(this),m=n.width(),l=n.height(),o=$.data(this,d);if(m!==o.w||l!==o.h){n.trigger(j,[o.w=m,o.h=l])}});g()},e[b])}})(jQuery,this);