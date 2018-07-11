<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>家庭收入</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
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
 -->					<h1><a href="index.jsp">家庭理财系统</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.action">主页</a></li>
								<li><a href="moneyout.action">家庭开支</a></li>
								<li class="active"><a href="moneyin.action">家庭收入</a></li>
								<li><a href="moneytools.action">实用工具</a></li>
								<li><a href="moneyfenxi.action">经济分析</a></li>
								<li><a href="familymumber.action">家庭成员</a></li>						
							</ul>
						</div>
					</nav>
					<a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">安全退出</a>
			</div>
		</div>		
	<div>
	<div align="center" style="padding: 10px;">
	
   <form action="Money_in_Add" method="post">
           
            分类:<select name="mi.type" style="background: #fff;">
            <option value="">请点击选择</option>
            <option value="工资">工资</option>
            <option value="利息">利息</option>
            <option value="投资">投资</option>
        </select>
        	

            账户:<select name="mi.accounttype" style="background: #fff;">
            <option value="">请点击选择</option>
            <option value="现金">现金</option>
            <option value="银行卡">银行卡</option>
        </select>
        <br/>
            时间：<input name="mi.time"  id="name" type="date">

                     
            
            备注：<input type="text"  id="name" name="mi.note">

            金额:<input type="text"  id="name" name="mi.money"/>
<br/>
            <input class="button" type="submit" value="记一笔" />
        </form>
        </div>
    </div>
    
     <div class="query" style=" margin-left: 120px; margin-right: 120px;">
   <s:form action="Money_in_Query" method="post">
<table >
		<tr style="background: #fbf3c7;">
		
    	<td>支出类型:<s:select list="{'','工资','利息','投资'}" name="miq.type" style="background: #fff;width: 160px;"/></td>
    	<td>账户类型:<s:select list="{'','现金','银行卡'}" name="miq.accounttype" style="background: #fff;width: 160px;"/></td> 
    	<td>时间:<input type="date" name="miq.time" style="width: 130px;"></td>
<!--     	<td>范围时间:<input type="date" name="moq.time2"></td> -->
    	
 		<td>备注:<s:textfield name="miq.note"  id="name" style="width: 130px;"/></td>
    	<td>金额:<s:textfield name="miq.money"  id="name" style="width: 130px;"/></td>
    	<td><input class="button" type="submit"  id="name" value="查询"/></td></tr>
</table>	

</s:form>
    
    </div>
    
    <div class="list">
        <table border="1">
            
            <tr>
            	<td align="center">账单编号</td>
                <td align="center">收入分类</td>
                <td align="center">金额</td>
                <td align="center">账户分类</td>
                <td align="center">时间</td>
                <td align="center">备注</td>
                <td colspan="2" align="center">操作</td>
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
				<input type="button" value="详情" class="sgBtn" id="btn7"
				onclick= "window.location.href='Money_in_toUpdate.action?mi.moneyinid=<s:property value='moneyinid'/>'">					
				</td>				
                <td align="center">
                <input type="button" value="删除" class="sgBtn" id="btn7"             
                onclick= "javascript:if(confirm('你确定要删除吗？')) window.location.href='Money_in_Delete.action?mi.moneyinid=<s:property value='moneyinid'/>'"></td>
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
		 <span id="spanFirst">第一页</span> <span id="spanPre">上一页</span> 
		 <span id="spanNext">下一页</span> <span id="spanLast">最后一页</span> 
		 第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页
		  	</div>  
	
	<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;太原理工大学</p>
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


     //下一页
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


     //上一页
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


     //第一页
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


     //最后一页
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


     //总共页数
     function pageCount() {
         var count = 0;
         if (numberRowsInTable % pageSize != 0) count = 1;
         return parseInt(numberRowsInTable / pageSize) + count;
     }


     //显示链接
     function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>上一页</a>"; }
     function preText() { spanPre.innerHTML = "上一页"; }


     function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>下一页</a>"; }
     function nextText() { spanNext.innerHTML = "下一页"; }


     function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>"; }
     function firstText() { spanFirst.innerHTML = "第一页"; }


     function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>"; }
     function lastText() { spanLast.innerHTML = "最后一页"; }


     //隐藏表格
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
            alert('有框未输入，请检查')
            return false;
        }
    }
</script>