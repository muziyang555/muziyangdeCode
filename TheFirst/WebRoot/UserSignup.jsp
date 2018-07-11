<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户注册</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/jq22.css" rel="stylesheet" type="text/css" />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jsAddress.js"></script>
<script language='javascript' src="js/jq22.js"></script>
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*总控制，可忽略此行*/
</style>
<style type="text/css">
			.button{width: 135px; height: 35px; line-height: 35px; margin-left: 10px; margin-top: 10px; text-align: center; background-color: #0095D9; color: #FFFFFF;  border-radius: 5px;}		
		</style>
</head>
  
<body>
<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="#">家庭理财系统</a></h1>
				</div>
					
			</div>
		</div>	
		
		<div><div class="body" align="center">
			<h1><a>欢迎注册</a></h1>
		
			<s:form action="UserAdd" method="post">
			<table border="1" >
				<tr>
				<td>用户名：</td>
				<td><s:textfield name="user.UserName" id="card_name"/></td>
				</tr>
				<tr>
				<td>密        码：</td>
				<td><span class="control-group" id="password1_input">
                <div class="input_add_long_background">
                  <input class="register_input" type="password" id="password1" name="user.Password" maxLength="20" value="" onblur="checkPwd1(this.value);" />
                </div>
                </span></td>
				</tr>
<!--  <input type="text" id="result" name="user.md5password" /> -->
	    		<tr><td>性别：</td>
	    		<td><s:select list="{'男','女'}" name="user.Sex"/></td>
	    		</tr>
				<tr>
				<td>手机号：</td>
				<td><span class="control-group" id="mobile_input">
                <div class="input_add_long_background">
                  <input class="register_input" type="text" id="mobile" name="user.Phone" maxLength="11" value="" onblur="__changeUserName('mobile');">
                </div>
                </span></td>
				</tr>
		    	<tr>
		    	<td>邮箱：</td>
		    	<td><span class="control-group" id="email_input">
                <div class="input_add_long_background">
                  <input class="register_input" type="text" id="email" name="user.Email" maxLength="50" value="" onblur="__changeUserName('email');">
                </div>
                </span></td>
		    	<tr>
		    	<td>所在地：</td>
		    	<td>省：<select id="Select1" name="user.Province"></select>
市：<select id="Select2" name="user.City"></select>
区：<select id="Select3" name="user.Area"></select>
<script type="text/javascript">
	addressInit('Select1', 'Select2', 'Select3');
</script></td>
		    	</tr>  
		    <tr><td colspan="2" align="center">
		    <input class="button" type="submit" value="注册" /></td></tr>
		    </table>
		   	</s:form>
		   	
		   	
</div></div>
</div>
	
	<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;太原理工大学</p>
			</div>
	</div>
</body>
<script type="text/javascript">
function __changeUserName(of){
  var username=$('#'+of).val();
  if(of=='email'){
	  if (username.search(/^[\w\.+-]+@[\w\.+-]+$/) == -1) {
			showTooltips('email_input','请输入正确的Email地址');
			return;
	}					
  }
  else{
	  if(username=='' || !isMobilePhone(username)) {
		  showTooltips('mobile_input','请输入正确的手机号码');
		  return;
	  }
  }
}
function checkPwd1(pwd1) {
	if (pwd1.search(/^.{6,20}$/) == -1) {
		showTooltips('password1_input','密码为空或位数小于6位');
	}else {
		hideTooltips('password1_input');
	}
}	

function checkEmail(email) {
	if (email.search(/^.+@.+$/) == -1) {
		showTooltips('email_input','邮箱格式不正确');
	}else {
		hideTooltips('email_input');
	}
}

function checkAuthCode(authcode) {
	if (authcode == '' || authcode.length != 6) {
		showTooltips('code_input','验证码不正确');
	}else {
		hideTooltips('code_input');
 }     
}

function check() {
	hideAllTooltips();
	var ckh_result = true;
	if ($('#email').val() == '') {
	showTooltips('email_input','邮箱不能为空');
	ckh_result = false;
  }
  if ($('#password1').val() == '') {
	showTooltips('password1_input','密码不能为空');
	ckh_result = false;
  }      
  if($('#mobile').val()=='' || !isMobilePhone($('#mobile').val())) {            
	  showTooltips('mobile_input','手机号码不正确');
	  ckh_result = false;
  }
  if ($('#code').val() == '' || $('#code').val().length !=6) {
	showTooltips('code_input','验证码不正确');
	ckh_result = false;
  }
  if ($('#verify').attr('checked') == false){
	showTooltips('checkbox_input','对不起，您不同意Webluker的《使用协议》无法注册');
	ckh_result = false;
  }
  return ckh_result;
}
function checkMobilePhone(telphone) {
	if(telphone=='' || !isMobilePhone(telphone)) {
	showTooltips('mobile_input','请输入正确的手机号码');
  }else{
	hideTooltips('mobile_input');
  }
}
function isMobilePhone(value) {
if(value.search(/^(\+\d{2,3})?\d{11}$/) == -1)
return false;
else
return true;
} 
</script> 
</html>


