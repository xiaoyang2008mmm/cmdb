$(document).ready(function(){
  $("#setting_btn1").click(function(){
        if($("#name").val()=="" || $("#weizhi").val()=="" || $("#tel").val()=="" || $("#kefu").val()=="" || $("#jigui").val()==""){
		//$("#warning-block").show();
		alert("请不要输入空元素");
        }else{
                $.post("/shezhi/",
                {
                        name:	$("#name").val(),
                        weizhi:	$("#weizhi").val(),
                        tel:	$("#tel").val(),
                        kefu:	$("#kefu").val(),
                        jigui:	$("#jigui").val(),
                },
                        function(status){
				alert("保存成功");
                });
				location.href='/idc_manager/';
        };
  });
});


