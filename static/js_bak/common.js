// JavaScript Document
$(function(){

	$("#nav-toggle").click(function(){
		$(".Hui_aside").slideToggle();		
	});	
	
	$(".dislpayArrow a").click(function(){
		if($(".Hui_aside").is(":hidden")){
			$(".Hui_aside").show();$(this).removeClass("open");
			$(".Hui_article,.dislpayArrow").css({"left":"200px"});
		}else{
			$(this).addClass("open");
			$(".Hui_aside").hide();
			$(".Hui_article,.dislpayArrow").css({"left":"0"});
		}
	});
}); 