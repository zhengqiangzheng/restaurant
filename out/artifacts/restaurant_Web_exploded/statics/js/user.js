/**
 * 
 */
function signIn(){
	var userName = $("#userName").val();
	var userPwd = $("#passPwd").val();
	if(isEmpty(userName)){
		$("#msg1").html("用户名不能为空！");
		return;
	}
	if(isEmpty(userPwd)){
		$("#msg1").html("密码不能为空！");
		return;
	}
	$("#msg1").html("");
	var rem = 0;
	if($("#check").prop("checked")){
		rem = 1;
	}
	$.ajax({
		url:"user",
		type:"post",
		data:{actionName:"login",uname:userName,upwd:userPwd,rem:rem},
		success:function(resultInfo){
			if(resultInfo.code == 1){
				window.location.href="index.jsp";
			}else{
				$("#msg1").html(resultInfo.msg);
			}
		}
	});
}
function signUp(){
	var userName = $("#username").val();
	var userPwd = $("#passpwd").val();
	var pwd = $("#pwdagain").val();
	var email = $("#email").val();
	if(isEmpty(userName)){
		$("#msg2").html("用户名不能为空！");
		return;
	}
	if(isEmpty(userPwd)){
		$("#msg2").html("密码不能为空！");
		return;
	}
	if(isEmpty(pwd)){
		$("#msg2").html("确认密码不能为空！");
		return;
	}
	if(isEmpty(email)){
		$("#msg2").html("邮箱不能为空！");
		return;
	}
	if(userPwd != pwd){
		$("#msg2").html("两次输入的密码不一致！");
		return;
	}
	$.ajax({
		url:"user",
		type:"post",
		data:{actionName:"register",uname:userName,upwd:userPwd,email:email},
		success:function(resultInfo){
			$("#msg2").html(resultInfo.msg);
		}
	});
}