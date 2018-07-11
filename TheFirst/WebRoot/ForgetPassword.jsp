<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>忘记密码</title>
<!-- Custom Theme files -->
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
</head>
  
  <body>
  <div align="center" class="login">
  <h2 style="color:#6cbc35;font-size:36px; font-weight: 400;
    text-decoration: none;
    text-transform: uppercase;">家庭财务管理系统</h2>	
		<div align="center" class="login-top">
		
			<table>
		    	<tr><td><h1>忘记密码</h1>	</td></tr>
	    		<tr><td>   				
    				&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="user.UserName" id="name" placeholder="请输入你的用户名....."/><br/>
    				&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="user.UserEmail" id="mail" placeholder="请输入你注册时的邮箱....."/><br/>
    			</td></tr>
    		</table>
    			<div class="forgot">	
    			   	
	    			<input type="submit" value="下一步" onclick="window.location.href='UpdatePassword.jsp'" > 
	    		
	    		</div>
	    	
	    	
	    		
    	</div>
  
	<div class="login-bottom">		
	<p><h3>这次可要记住哦O(∩_∩)O~ </h3>
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
        if( f.mail.value == '' ){
            alert('邮箱不能为空')
            return false;
        }
    }
</script>