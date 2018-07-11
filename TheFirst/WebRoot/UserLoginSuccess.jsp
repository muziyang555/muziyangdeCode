<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>注册成功</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*总控制，可忽略此行*/
</style>
<script type="text/javascript">
		var time = 5; //时间,秒
		function Redirect() {
		    window.location = "index.jsp";
		}
		var i = 0;
		function dis() {
		    document.all.s.innerHTML = "还剩" + (time - i) + "秒";
		    i++;
		}
		timer = setInterval('dis()', 1000); //显示时间
		timer = setTimeout('Redirect()', time * 1000); //跳转
	</script>


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
		<div class="body" align="center">
			<h1>${user.userName }&nbsp;恭喜您，注册成功！</h1>
            页面将会在<span id="s"></span>秒后自动跳转，或点击<a href="index.jsp?user.UserName=<s:property value="user.UserName"/>">这里</a>跳转！
		</div>	
</div>
		
	
	
	<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;太原理工大学</p>
			</div>
	</div>
</body>
</html>
</html>

