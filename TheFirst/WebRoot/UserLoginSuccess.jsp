<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ע��ɹ�</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*�ܿ��ƣ��ɺ��Դ���*/
</style>
<script type="text/javascript">
		var time = 5; //ʱ��,��
		function Redirect() {
		    window.location = "index.jsp";
		}
		var i = 0;
		function dis() {
		    document.all.s.innerHTML = "��ʣ" + (time - i) + "��";
		    i++;
		}
		timer = setInterval('dis()', 1000); //��ʾʱ��
		timer = setTimeout('Redirect()', time * 1000); //��ת
	</script>


</head>
  
<body>
<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="#">��ͥ���ϵͳ</a></h1>
				</div>
					
			</div>
		</div>		
		<div class="body" align="center">
			<h1>${user.userName }&nbsp;��ϲ����ע��ɹ���</h1>
            ҳ�潫����<span id="s"></span>����Զ���ת������<a href="index.jsp?user.UserName=<s:property value="user.UserName"/>">����</a>��ת��
		</div>	
</div>
		
	
	
	<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;̫ԭ����ѧ</p>
			</div>
	</div>
</body>
</html>
</html>

