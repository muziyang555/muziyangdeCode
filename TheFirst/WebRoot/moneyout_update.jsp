<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��֧ͥ��</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<style>
/*�����л�ɫ*/
body{font-family:Arial; font-size:15px;line-height:180%;} /*�ܿ��ƣ��ɺ��Դ���*/
table tr:first-child{background:#c6f9f7; color:#555;} /*��һ�б�����ɫ����*/
table{border-top:1pt solid #C1DAD7;border-left:1pt solid #C1DAD7;margin: 0 auto;} 
td{ padding:5px 10px; text-align:center;border-right:1pt solid #C1DAD7;border-bottom:1pt solid #C1DAD7;}
tr:nth-of-type(odd){ background:#c6f9f7} /* odd ��ʶ�����У�even��ʶż���� */
tr:nth-of-type(even){ background:#c6f9f7} /* odd ��ʶ�����У�even��ʶż���� */
tr:hover{ background: #E0F0F0;} /*�����ͣ���񱳾���ɫ*/
</style>

<style type="text/css">
			.button{width: 135px; height: 35px; line-height: 35px; margin-left: 10px; margin-top: 10px; text-align: center; background-color: #0095D9; color: #FFFFFF;  border-radius: 5px;}
		
		</style>
<style type="text/css">
			.sgBtn{width: 135px; height: 35px; line-height: 35px; margin-left: 10px; margin-top: 10px; text-align: center; background-color: #0095D9; color: #FFFFFF; float: left; border-radius: 5px;}
		</style>
<style>
select { background: transparent; width: 250px; padding: 5px; font-size: 14px; border: 1px solid #ccc; height: 34px;
}
input{width: "250px";}
tr{height: 60px;}
</style>	
</head>

<body>
	<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.jsp">��ͥ���ϵͳ</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.action">��ҳ</a></li>
								<li  class="active"><a href="moneyout.action">��ͥ��֧</a></li>
								<li><a href="moneyin.action">��ͥ����</a></li>
								<li><a href="moneytools.action">ʵ�ù���</a></li>
								<li><a href="moneyfenxi.action">���÷���</a></li>
								<li><a href="familymumber.action">��ͥ��Ա</a></li>						
							</ul>
						</div>
					 </nav>
			</div>		
		</div> 

<div class="body" align="center" style="padding: 20px;"> 

<s:form action="Money_out_Update" method="post" onsubmit="return check(this)">
<table border="none">
		<tr><td colspan="2" >�˵����:<s:textfield name="mo.moneyoutid" readonly="true"/></td></tr>
    	<tr><td colspan="2">֧������:<s:select list="motype" name="mo.type" /></td></tr>
    	<tr><td colspan="2">�˻�����:<s:select list="moaccounttype" name="mo.accounttype" /></td></tr>
    	<tr><td colspan="2">ʱ��:<input type="date" name="mo.time" value="<s:date  name="mo.time" format="yyyy-MM-dd"/>"/></td></tr>
    	<tr><td colspan="2">�̼�:<s:textfield id="name" name="mo.shop" /></td></tr>
    	<tr><td colspan="2">��ע:<s:textfield id="name" name="mo.note" /></td></tr>
    	<tr><td colspan="2">���:<s:textfield id="name" name="mo.money" /></td></tr>
    	<tr><td><input class="button" type="submit" value="�޸�"/></td>
    	<td><input  type="button" value="����" class="sgBtn" id="btn7"
		onclick= "window.location.href='moneyout.action'" >	</td></tr>			
</table>	

    </s:form>
</div>
</div>
<div class="footer-bottom">
	
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;̫ԭ����ѧ</p>
			</div>
	</div>
</body>
</html>
<script>
    function check(f){
        if( f.name.value == '' ){
            alert('�п�δ���룬����')
            return false;
        }
    }
</script>