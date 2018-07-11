<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>经济分析</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*总控制，可忽略此行*/
table tr:first-child{background:#c6f9f7; color:#555;} /*第一行标题蓝色背景*/
table{border-top:1pt solid #C1DAD7;border-left:1pt solid #C1DAD7;margin: 0 auto;} 
td{ padding:5px 10px; text-align:center;border-right:1pt solid #C1DAD7;border-bottom:1pt solid #C1DAD7;}
tr:nth-of-type(odd){ background:#c6f9f7} /* odd 标识奇数行，even标识偶数行 */
tr:hover{ background: #E0F0F0;} /*鼠标悬停后表格背景颜色*/
</style>
</head>
  
<body>
<!-- banner -->
<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.action">家庭理财系统</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.action">主页</a></li>
								<li><a href="moneyout.action">家庭开支</a></li>
								<li><a href="moneyin.action">家庭收入</a></li>
								<li><a href="moneytools.action">实用工具</a></li>
								<li><a href="moneyfenxi.action">经济分析</a></li>
								<li class="active"><a href="familymumber.action">家庭成员</a></li>						
								<s:property value="user.UserName"/>
							</ul>
						</div>
					</nav>
					<a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">安全退出</a>
			</div>
		</div>	
		<div class="body" align="center">
		<table align="center">
		<s:iterator value="userList">
            <%-- <s:if test="#user.UserName=<s:property value="user.UserName"/>">
            --%>		<tr><td>用户名：<s:property value="UserName" /></td>
                <td>性别：<s:property value="Sex" /></td>
                <td>手机号：<s:property value="Phone" /></td>
                <td>邮箱：<s:property value="Email" /></td>
                <td>省：<s:property value="Province" /></td>
                <td>市：<s:property value="City" /></td>
                <td>区：<s:property value="Area" /></td></tr>
              <%-- </s:if>   --%>
                
		</s:iterator> 
		</table>
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

