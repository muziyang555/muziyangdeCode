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
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
<style>
/*�����л�ɫ*/
body{font-family:Arial; font-size:15px;line-height:180%;} /*�ܿ��ƣ��ɺ��Դ���*/
table tr:first-child{background:#c6f9f7; color:#555;} /*��һ�б�����ɫ����*/
table{border-top:1pt solid #C1DAD7;border-left:1pt solid #C1DAD7;margin: 0 auto;} 
td{ padding:5px 10px; text-align:center;border-right:1pt solid #C1DAD7;border-bottom:1pt solid #C1DAD7;}
tr:nth-of-type(odd){ background:#c6f9f7} /* odd ��ʶ�����У�even��ʶż���� */
tr:nth-of-type(even){ background:#eae3be} /* odd ��ʶ�����У�even��ʶż���� */
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
	<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.jsp">��ͥ���ϵͳ</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.action?user.UserName=<s:property value="user.UserName"/>">��ҳ</a></li>
								<li  class="active"><a href="moneyout.action">��ͥ��֧</a></li>
								<li><a href="moneyin.action">��ͥ����</a></li>
								<li><a href="moneytools.action">ʵ�ù���</a></li>
								<li><a href="moneyfenxi.action">���÷���</a></li>
								<li><a href="familymumber.action">��ͥ��Ա</a></li>						
								<li><a><s:property value="user.UserName"/></a></li>
							</ul>
						</div>
					 </nav>
					 <a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">��ȫ�˳�</a>
			</div>		
		</div> 
		
	
	<div align="center" style="padding: 10px;">
        <form action="Money_out_Add" method="post">
		            ���ࣺ<select name="mo.type" id="type" style="background: #fff;">
		            <option value="">��ѡ��</option>
		            <option value="ʳƷ">ʳƷ</option>
		            <option value="�·�">�·�</option>
		            <option value="��ͨ">��ͨ</option>
		            <option value="ҽ��">ҽ��</option>
		        </select>		
		            �˻���<select name="mo.accounttype" style="background: #fff;">
		            <option value="">��ѡ��</option>
		            <option value="�ֽ�">�ֽ�</option>
		            <option value="���п�">���п�</option>
		        </select>
		        <br/>
		            ʱ�䣺<input type="date" name="mo.time" style="width:250px;">		
		            �̼ң�<input type="text" id="name" name="mo.shop" style="width:250px;">		
		         <br/>		            
		            ��ע��<input type="text" id="name" name="mo.note" id="note" style="width:250px;">		
		            ��<input type="text" id="name" name="mo.money" style="width:250px;">
				 <br/>
				 
		<input class="button" type="submit" value="��һ��" style="mmargin-left: 900px;padding-left: 6px;margin-left: 450px;"/>				
        </form>
    </div>
    <div class="query" style="
    margin-left: 120px;
    margin-right: 120px;
">
   <s:form action="Money_out_Query" method="post">
<table >
		<tr style="background: #fbf3c7;">
		
    	<td>֧������:<s:select list="{'','ʳƷ','�·�','��ͨ','ҽ��'}" name="moq.type" style="background: #fff;width: 160px;"/></td>
    	<td>�˻�����:<s:select list="{'','�ֽ�','���п�'}" name="moq.accounttype" style="background: #fff;width: 160px;"/></td> 
    	<td>ʱ��:<input type="date" name="moq.time" style="width: 130px;"></td>
<!--     	<td>��Χʱ��:<input type="date" name="moq.time2"></td> -->
    	<td>�̼�:<s:textfield name="moq.shop" style="width: 130px;"/></td>
 		<td>��ע:<s:textfield name="moq.note" style="width: 130px;"/></td>
    	<td>���:<s:textfield name="moq.money" style="width: 130px;"/></td>
    	<td><input class="button" type="submit" value="��ѯ"/></td></tr>
</table>	

</s:form>
    
    </div>
   	<div class="list">
        <table border="1">      
             
            <tr>
            	<td align="center">�˵����</td>
                <td align="center">֧������</td>
                <td align="center">�˻�����</td>
                <td align="center">���</td>
                <td align="center">ʱ��</td>
                <td align="center">�̼�</td>
                <td align="center">��ע</td>
                <td colspan="2" align="center">����</td>
            </tr>    
        <tbody id="table2">      
<s:iterator value="moList">
            <tr>
           		<td><s:property value="moneyoutid" /></td>
                <td><s:property value="type" /></td>
                <td><s:property value="accounttype" /></td>
                <td><s:property value="money" /></td>
                <td>20<s:property value="time" /></td>
                <td><s:property value="shop" /></td>
                <td><s:property value="note" /></td>
                
                <td align="center">		
				<input type="button" value="����" class="sgBtn" id="btn7"
				onclick= "window.location.href='Money_out_toUpdate.action?mo.moneyoutid=<s:property value='moneyoutid'/>'">					
				</td>				
                <td align="center">
                <input type="button" value="ɾ��" class="sgBtn" id="btn7"             
               	onclick= "javascript:if(confirm('��ȷ��Ҫɾ����')) window.location.href='Money_out_Delete.action?mo.moneyoutid=<s:property value='moneyoutid'/>'"></td>
	            </tr>
		          </s:iterator> 
           </tbody> 
	</table>
			
	</div>
</div>	
	<div align="center" 
	style="
	position:relative; 
	 background:#fdf5ce;
    top:1px; ">
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
//��ҳ
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
