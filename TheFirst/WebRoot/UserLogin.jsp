<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��¼ҳ</title>
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
    text-transform: uppercase;">��ͥ�������ϵͳ</h2>
	<form action="LoginValidate.action" method="post" onsubmit="return check(this)">
	<div class="login-top">
		<table>
		    <tr><td><h1>��ӭ��½</h1></td></tr>
			<tr>
				<td>�û���:</td>
				<td><s:textfield name="user.UserName" id="name" placeholder="�û���....."/></td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;��:</td>
				<td><s:password name="user.Password" id="pwd" placeholder="����....."/></td>
			</tr>
						
	    </table>
	    
	    
	    <div class="forgot">
	    	<a href="ForgetPassword.jsp">��������</a>
	    	<input type="submit" value="��½" >
	    </div>
	    
	</div>
	</form>
	<div class="login-bottom">
		<h3>û���˻�����<a href="UserSignup.jsp">ע��</a>�˻�</h3>
	</div>
</div>
  </body>
</html>
<script>
    function check(f){
        if( f.name.value == '' ){
            alert('�û�������Ϊ��')
            return false;
        }
        if( f.pwd.value == '' ){
            alert('���벻��Ϊ��')
            return false;
        }
    }
</script>