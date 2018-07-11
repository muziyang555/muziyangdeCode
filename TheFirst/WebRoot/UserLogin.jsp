<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录页</title>
<!-- Custom Theme files -->
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

</head>
  
  <body> 
  
  <div class="login">
	<h2 style="color:#6cbc35;font-size:36px; font-weight: 400;
    text-decoration: none;
    text-transform: uppercase;">家庭财务管理系统</h2>
	<form action="LoginValidate.action" method="post" onsubmit="return check(this)">
	<div class="login-top">
		<table>
		    <tr><td><h1>欢迎登陆</h1></td></tr>
			<tr>
				<td>用户名:</td>
				<td><s:textfield name="user.UserName" id="name" placeholder="用户名....."/></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
				<td><s:password name="user.Password" id="pwd" placeholder="密码....."/></td>
			</tr>
						
	    </table>
	    
	    
	    <div class="forgot">
	    	<a href="ForgetPassword.jsp">忘记密码</a>
	    	<input type="submit" value="登陆" >
	    </div>
	    
	</div>
	</form>
	<div class="login-bottom">
		<h3>没有账户？请<a href="UserSignup.jsp">注册</a>账户</h3>
	</div>
</div>
  </body>
</html>
<script>
    function check(f){
        if( f.name.value == '' ){
            alert('用户名不能为空')
            return false;
        }
        if( f.pwd.value == '' ){
            alert('密码不能为空')
            return false;
        }
    }
</script>