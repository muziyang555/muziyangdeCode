<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��������</title>
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
  <h2>��ͥ�������ϵͳ</h2>	
		<div align="center" class="login-top">
			<table>
		    	<tr><td><h1>�޸�����</h1>	</td></tr>
	    		<tr><td>   				
    				<s:form action="UpdatePassword.action" method="post">
   		
			<s:textfield name="user.Password"  placeholder="������....."/><br>
		
  </s:form>
    			</td></tr>
    		</table>
    			<div class="forgot">	
    			   	
	    			<s:submit value="�ύ"/> 
	    		
	    		</div>
	    	
	    	
	    		
    	</div>
  
	<div class="login-bottom">		
	<p><h3>��ο�Ҫ��סŶO(��_��)O~ </h3>
	</div>
    </div>	

  
  </body>
</html>
