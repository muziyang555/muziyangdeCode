<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��ͥ����</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*�ܿ��ƣ��ɺ��Դ���*/
table tr:first-child{background:#c6f9f7; color:#555;} /*��һ�б�����ɫ����*/
table{border-top:1pt solid #C1DAD7;border-left:1pt solid #C1DAD7;margin: 0 auto;} 
td{ padding:5px 10px; text-align:center;border-right:1pt solid #C1DAD7;border-bottom:1pt solid #C1DAD7;}
tr:nth-of-type(odd){ background:#c6f9f7} /* odd ��ʶ�����У�even��ʶż���� */
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
</style>	



</head>
  
<body>
<!-- banner -->
<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
<!-- 					<a class="hvr-shutter-in-horizontal" href="details.html">Book Now</a>
 -->					<h1><a href="index.jsp">��ͥ���ϵͳ</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.action">��ҳ</a></li>
								<li><a href="moneyout.action">��ͥ��֧</a></li>
								<li class="active"><a href="moneyin.action">��ͥ����</a></li>
								<li><a href="moneytools.action">ʵ�ù���</a></li>
								<li><a href="moneyfenxi.action">���÷���</a></li>
								<li><a href="familymumber.action">��ͥ��Ա</a></li>						
							</ul>
						</div>
					</nav>
					<a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">��ȫ�˳�</a>
			</div>
		</div>		
	<div>
	<div align="center" style="padding: 10px;">
	
   <form action="Money_in_Add" method="post">
           
            ����:<select name="mi.type" style="background: #fff;">
            <option value="">����ѡ��</option>
            <option value="����">����</option>
            <option value="��Ϣ">��Ϣ</option>
            <option value="Ͷ��">Ͷ��</option>
        </select>
        	

            �˻�:<select name="mi.accounttype" style="background: #fff;">
            <option value="">����ѡ��</option>
            <option value="�ֽ�">�ֽ�</option>
            <option value="���п�">���п�</option>
        </select>
        <br/>
            ʱ�䣺<input name="mi.time"  id="name" type="date">

                     
            
            ��ע��<input type="text"  id="name" name="mi.note">

            ���:<input type="text"  id="name" name="mi.money"/>
<br/>
            <input class="button" type="submit" value="��һ��" />
        </form>
        </div>
    </div>
    
     <div class="query" style=" margin-left: 120px; margin-right: 120px;">
   <s:form action="Money_in_Query" method="post">
<table >
		<tr style="background: #fbf3c7;">
		
    	<td>֧������:<s:select list="{'','����','��Ϣ','Ͷ��'}" name="miq.type" style="background: #fff;width: 160px;"/></td>
    	<td>�˻�����:<s:select list="{'','�ֽ�','���п�'}" name="miq.accounttype" style="background: #fff;width: 160px;"/></td> 
    	<td>ʱ��:<input type="date" name="miq.time" style="width: 130px;"></td>
<!--     	<td>��Χʱ��:<input type="date" name="moq.time2"></td> -->
    	
 		<td>��ע:<s:textfield name="miq.note"  id="name" style="width: 130px;"/></td>
    	<td>���:<s:textfield name="miq.money"  id="name" style="width: 130px;"/></td>
    	<td><input class="button" type="submit"  id="name" value="��ѯ"/></td></tr>
</table>	

</s:form>
    
    </div>
    
    <div class="list">
        <table border="1">
            
            <tr>
            	<td align="center">�˵����</td>
                <td align="center">�������</td>
                <td align="center">���</td>
                <td align="center">�˻�����</td>
                <td align="center">ʱ��</td>
                <td align="center">��ע</td>
                <td colspan="2" align="center">����</td>
            </tr>

            <tbody id="table2">      
<s:iterator value="miList">
            <tr>
           		<td><s:property value="moneyinid" /></td>
                <td><s:property value="type" /></td>
                <td><s:property value="accounttype" /></td>
                <td><s:property value="money" /></td>
                <td>20<s:property value="time" /></td>
                <td><s:property value="note" /></td>
                
                <td align="center">		
				<input type="button" value="����" class="sgBtn" id="btn7"
				onclick= "window.location.href='Money_in_toUpdate.action?mi.moneyinid=<s:property value='moneyinid'/>'">					
				</td>				
                <td align="center">
                <input type="button" value="ɾ��" class="sgBtn" id="btn7"             
                onclick= "javascript:if(confirm('��ȷ��Ҫɾ����')) window.location.href='Money_in_Delete.action?mi.moneyinid=<s:property value='moneyinid'/>'"></td>
	            </tr>
		        </s:iterator> 
           </tbody> 
	</table>
			
	</div>
</div>	
	<div align="center" 
	style="
	position:relative; 
	 
    top:1px; 
    ">
		 <span id="spanFirst">��һҳ</span> <span id="spanPre">��һҳ</span> 
		 <span id="spanNext">��һҳ</span> <span id="spanLast">���һҳ</span> 
		 ��<span id="spanPageNum"></span>ҳ/��<span id="spanTotalPage"></span>ҳ
		  	</div>  
	
	<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;̫ԭ����ѧ</p>
			</div>
	</div>
</body>
</html>
</html>
<script>
     var theTable = document.getElementById("table2");
     var totalPage = document.getElementById("spanTotalPage");
     var pageNum = document.getElementById("spanPageNum");


     var spanPre = document.getElementById("spanPre");
     var spanNext = document.getElementById("spanNext");
     var spanFirst = document.getElementById("spanFirst");
     var spanLast = document.getElementById("spanLast");


     var numberRowsInTable = theTable.rows.length;
     var pageSize = 4;
     var page = 1;


     //��һҳ
     function next() {


         hideTable();


         currentRow = pageSize * page;
         maxRow = currentRow + pageSize;
         if (maxRow > numberRowsInTable) maxRow = numberRowsInTable;
         for (var i = currentRow; i < maxRow; i++) {
             theTable.rows[i].style.display = '';
         }
         page++;


         if (maxRow == numberRowsInTable) { nextText(); lastText(); }
         showPage();
         preLink();
         firstLink();
     }


     //��һҳ
     function pre() {


         hideTable();


         page--;


         currentRow = pageSize * page;
         maxRow = currentRow - pageSize;
         if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
         for (var i = maxRow; i < currentRow; i++) {
             theTable.rows[i].style.display = '';
         }




         if (maxRow == 0) { preText(); firstText(); }
         showPage();
         nextLink();
         lastLink();
     }


     //��һҳ
     function first() {
         hideTable();
         page = 1;
         for (var i = 0; i < pageSize; i++) {
             theTable.rows[i].style.display = '';
         }
         showPage();


         preText();
         nextLink();
         lastLink();
     }


     //���һҳ
     function last() {
         hideTable();
         page = pageCount();
         currentRow = pageSize * (page - 1);
         for (var i = currentRow; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = '';
         }
         showPage();


         preLink();
         nextText();
         firstLink();
     }


     function hideTable() {
         for (var i = 0; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = 'none';
         }
     }


     function showPage() {
         pageNum.innerHTML = page;
     }


     //�ܹ�ҳ��
     function pageCount() {
         var count = 0;
         if (numberRowsInTable % pageSize != 0) count = 1;
         return parseInt(numberRowsInTable / pageSize) + count;
     }


     //��ʾ����
     function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>��һҳ</a>"; }
     function preText() { spanPre.innerHTML = "��һҳ"; }


     function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>��һҳ</a>"; }
     function nextText() { spanNext.innerHTML = "��һҳ"; }


     function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>��һҳ</a>"; }
     function firstText() { spanFirst.innerHTML = "��һҳ"; }


     function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>���һҳ</a>"; }
     function lastText() { spanLast.innerHTML = "���һҳ"; }


     //���ر��
     function hide() {
         for (var i = pageSize; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = 'none';
         }


         totalPage.innerHTML = pageCount();
         pageNum.innerHTML = '1';


         nextLink();
         lastLink();
     }


     hide();
</script>
<script>
    function check(f){
        if( f.name.value == '' ){
            alert('�п�δ���룬����')
            return false;
        }
    }
</script>