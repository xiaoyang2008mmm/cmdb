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
//********************

  $("#setting_btn2").click(function(){
        if($("#user").val()=="" || $("#passwd").val()=="" || $("#passwd2").val()=="" || $("#email").val()=="" || $("#tel").val()==""){
                //$("#warning-block").show();
                alert("请不要输入空元素");
        }else if ($("#passwd").val()!=$("#passwd2").val())
  		{
                //$("#check_passwd").show();
		alert("密码不一致");
  		}
	else{
                $.post("/useradd/",
                {
                        user:   $("#user").val(),
                        passwd: $("#passwd").val(),
                        email:  $("#email").val(),
                        tel:  	$("#tel").val(),
			sele:	$('#sele option:selected').text(),
                },
                        function(status){
                                alert("保存成功");
                });
				location.href='/user/';
        };
  });

});


