<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>ʵ�ù���</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css'  href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/jquery-1.11.1.min.js"></script>
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*�ܿ��ƣ��ɺ��Դ���*/
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
								<li><a href="moneyout.action">��ͥ��֧</a></li>
								<li><a href="moneyin.action">��ͥ����</a></li>
								<li class="active"><a href="moneytools.action">ʵ�ù���</a></li>
								<li><a href="moneyfenxi.action">���÷���</a></li>
								<li><a href="familymumber.action">��ͥ��Ա</a></li>						
							</ul>
						</div>
					</nav>
					<a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">��ȫ�˳�</a>
				</div>
		    </div>
		    <div class="body">


<STYLE>
BODY {

	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(/img/bj.gif) #fffff8 repeat-x 0px 0px; COLOR: #6d6d6a; FONT-SIZE: 15px; PADDING-TOP: 0px

}

A {

	COLOR: #6d6d6a; TEXT-DECORATION: none

}

A:hover {

	COLOR: #f06a22

}

.left_wz {

	PADDING-LEFT: 20px; FONT-WEIGHT: bold

}

.mid_wz {

	PADDING-LEFT: 20px; FONT-WEIGHT: bold

}

.left_wz {

	COLOR: #d7342f

}

.mid_wz {

	COLOR: #000

}

.left_gryh {

	COLOR: #f36f21; FONT-WEIGHT: bold

}

.left_qyyh {

	COLOR: #57a677; FONT-WEIGHT: bold

}

.left_ul {

	PADDING-BOTTOM: 0px; MARGIN: 4px auto 0px; PADDING-LEFT: 0px; WIDTH: 179px; PADDING-RIGHT: 0px; PADDING-TOP: 0px

}

.left_ul LI {

	LIST-STYLE-TYPE: none

}

.left_ul LI A {

	LINE-HEIGHT: 34px; LIST-STYLE-TYPE: none; PADDING-LEFT: 25px; WIDTH: 154px; DISPLAY: block; BACKGROUND: url(/img/left_navbj.gif) no-repeat 0px 0px; COLOR: #6d6d6a; FONT-WEIGHT: bold; TEXT-DECORATION: none

}

.left_ul LI A:hover {

	BACKGROUND: url(/img/left_navbj_hover.gif) no-repeat 0px 0px

}

.min_qhhover {

	COLOR: #fff; FONT-WEIGHT: bold

}

.min_qhnone {

	COLOR: #000; FONT-WEIGHT: bold

}

.time {

	COLOR: #b0b0b0

}

.left_wz1 {

	PADDING-LEFT: 20px; FONT-WEIGHT: bold

}
span{
padding:6px;
}
</STYLE>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<LINK rel=stylesheet type=text/css href="css/basic.css"><LINK 

rel=stylesheet type=text/css href="css/index.css">

<SCRIPT type=text/javascript src="js/jquery-1.3.2.min.js"></SCRIPT>

<SCRIPT type=text/javascript src="js/js.js"></SCRIPT>



<SCRIPT type=text/javascript>

$(function() { getMyMenu("lcjsq"); });

</SCRIPT>

<DIV id=main_tab>

                  <DIV class=blank_block>
                  <DIV class=main_tab_title>
                  <UL>
                    <LI id=a class=tab_on>������� </LI>
                    <LI id=b class=tab>������� </LI>
                    <LI id=c class=tab>��Ҷһ����� </LI>
                    <LI id=d class=tab>��ծ������� </LI></UL></DIV>
                  <DIV class=main_tab_item style="background: #dff0d8;">
                  <UL id=tab_a class=show_tab>
                    <SCRIPT language=javascript type=text/javascript>
 var frateArray=new Array();

  //�����

  var frateArray0=new Array();

  frateArray0[0] = "0.4000";	//����

  frateArray0[1] = "2.6000";	//����

  frateArray0[2] = "2.8000";	//����

  frateArray0[3] = "3.0000";	//һ��

  frateArray0[4] = "3.9000";	//����

  frateArray0[5] = "4.5000";	//����

  frateArray0[6] = "5.0000";	//����



  frateArray[0]=frateArray0;

  

  //��Ԫ

  var frateArray1=new Array();

  frateArray1[0] = "0.1000";	//����

  frateArray1[1] = "0.2500";	//һ����

  frateArray1[2] = "0.5000";	//������

  frateArray1[3] = "0.7500";	//����

  frateArray1[4] = "1.2500";	//һ��

  frateArray1[5] = "1.2500";	//����

  frateArray[1]=frateArray1;

  

  //Ӣ��

  var frateArray2=new Array();

  frateArray2[0] = "0.1250";	//����

  frateArray2[1] = "0.2180";	//һ����

  frateArray2[2] = "0.8050";	//������

  frateArray2[3] = "0.9760";	//����

  frateArray2[4] = "1.0760";	//һ��

  frateArray2[5] = "1.0760";	//����

  frateArray[2]=frateArray2;

  

  //ŷԪ

  var frateArray3=new Array();

  frateArray3[0] = "0.1000";	//����

  frateArray3[1] = "0.7500";	//һ����

  frateArray3[2] = "1.0000";	//������

  frateArray3[3] = "1.1250";	//����

  frateArray3[4] = "1.2500";	//һ��

  frateArray3[5] = "1.3125";	//����

  frateArray[3]=frateArray3;

  

  //��Ԫ

  var frateArray4=new Array();

  frateArray4[0] = "0.0001";	//����

  frateArray4[1] = "0.0100";	//һ����

  frateArray4[2] = "0.0100";	//������

  frateArray4[3] = "0.0100";	//����

  frateArray4[4] = "0.0100";	//һ��

  frateArray4[5] = "0.0100";	//����

  frateArray[4]=frateArray4;

  

  //�۱�

  var frateArray5=new Array();

  frateArray5[0] = "0.0200";	//����

  frateArray5[1] = "0.1500";	//һ����

  frateArray5[2] = "0.4000";	//������

  frateArray5[3] = "0.5000";	//����

  frateArray5[4] = "0.8000";	//һ��

  frateArray5[5] = "1.1000";	//����

  frateArray[5]=frateArray5;

  

  //���ô�Ԫ

  var frateArray6=new Array();

  frateArray6[0] = "0.0400";	//����

  frateArray6[1] = "0.2165";	//һ����

  frateArray6[2] = "0.3915";	//������

  frateArray6[3] = "0.5100";	//����

  frateArray6[4] = "0.7315";	//һ��

  frateArray6[5] = "0.7315";	//����

  frateArray[6]=frateArray6;

  

  //��ʿ����

  var frateArray7=new Array();

  frateArray7[0] = "0.0001";	//����

  frateArray7[1] = "0.0100";	//һ����

  frateArray7[2] = "0.0100";	//������

  frateArray7[3] = "0.0100";	//����

  frateArray7[4] = "0.0100";	//һ��

  frateArray7[5] = "0.0100";	//����

  frateArray[7]=frateArray7;

  

  //�Ĵ�����Ԫ

  var frateArray8=new Array();

  frateArray8[0] = "0.2375";	//����

  frateArray8[1] = "1.2400";	//һ����

  frateArray8[2] = "1.3875";	//������

  frateArray8[3] = "1.5075";	//����

  frateArray8[4] = "1.5750";	//һ��

  frateArray8[5] = "1.5750";	//����

  frateArray[8]=frateArray8;

  

  //�¼���Ԫ

  var frateArray9=new Array();

  frateArray9[0] = "0.0001";	//����

  frateArray9[1] = "0.0100";	//һ����

  frateArray9[2] = "0.0100";	//������

  frateArray9[3] = "0.0100";	//����

  frateArray9[4] = "0.0100";	//һ��

  frateArray9[5] = "0.0100";	//����

  frateArray[9]=frateArray9;

  

  var first = 0;

  var cnyArray=new Array();

  

  cnyArray[first] = new Array('����','0');	//����

  first++;

  cnyArray[first] = new Array('������ȡ ������','1');	//������

  first++;

  cnyArray[first] = new Array('������ȡ ����','2');	//����

  first++;

  cnyArray[first] = new Array('������ȡ һ��','3');	//һ��

  first++;

  cnyArray[first] = new Array('������ȡ ����','4');	//����

  first++;

  cnyArray[first] = new Array('������ȡ ����','5');	//����

  first++;

  cnyArray[first] = new Array('������ȡ ����','6');	//����

  first++;

  

  var second = 0;

  var forArray=new Array();

  

  forArray[second] = new Array('����','0');	//����

  second++;

  forArray[second] = new Array('������ȡ һ����','1');	//һ����

  second++;

  forArray[second] = new Array('������ȡ ������','2');	//������

  second++;

  forArray[second] = new Array('������ȡ ����','3');	//����

  second++;

  forArray[second] = new Array('������ȡ һ��','4');	//һ��

  second++;

  forArray[second] = new Array('������ȡ ����','5');	//����

  second++;

  

  var limitArray1=new Array();

  limitArray1[0] = '';

  limitArray1[1] = 3;

  limitArray1[2] = 6;

  limitArray1[3] = 12;

  limitArray1[4] = 24;

  limitArray1[5] = 36;

  limitArray1[6] = 60;

  

  var limitArray2=new Array();

  limitArray2[0] = '';

  limitArray2[1] = 1;

  limitArray2[2] = 3;

  limitArray2[3] = 6;

  limitArray2[4] = 12;

  limitArray2[5] = 24;

	

</SCRIPT>



                    <SCRIPT language=javascript>

	// ��������Ϊ����ʾ

function perSaving(){ 

        var amount=document.per_form.amountTextBox.value 

        var yrate=document.per_form.yRateTextBox.value 

        var term=document.per_form.termTextBox.value 

       

      if (amount==""){ 

         alert("����������!") 

         document.per_form.amountTextBox.focus() 

         window.event.returnValue = false; 

         return

      } 

	  if(isNaN(amount)){ 

         alert("�����Ϊ����!") 

         document.per_form.amountTextBox.focus()

         window.event.returnValue = false;

          return

         } 

       if (yrate==""){ 

         alert("�����������ʻ�ѡ����������!") 

         document.per_form.yRateTextBox.focus() 

         window.event.returnValue = false;

          return

      } 

	  if(isNaN(yrate)){ 

         alert("������Ϊ����!") 

         document.per_form.yRateTextBox.focus() 

         window.event.returnValue = false;

          return

         }

       if (term==""){ 

         alert("���������!") 

         document.per_form.termTextBox.focus() 

         window.event.returnValue = false;

         return

      } 

      if(isNaN(term)){ 

         alert("����Ϊ����!") 

          document.per_form.termTextBox.focus()

         window.event.returnValue = false;

          return

         } 

    var taxrate=0.05;//Saving Tax Rate,20070816

    var interest=amount*yrate*term*0.01/12

    var tax=taxrate*amount*yrate*term*0.01/12

    var result=amount*(1+(1-taxrate)*yrate*term*0.01/12) 

    interest=Math.round(interest*100) 

	interest=interest/100 

	interest=interest+""	 

    document.per_form.interestTextBox.value=interest

    

    tax=Math.round(tax*100) 

	tax=tax/100 

	tax=tax+""	 

    document.per_form.taxTextBox.value=tax          

	

	result=Math.round(result*100) 

	result=result/100 

	result=result+""	 

    document.per_form.resultTextBox.value=result    

    window.event.returnValue = false;     

	} 

</SCRIPT>



                    <SCRIPT language=javascript type=text/javascript>

<!--

	function __doPostBack(eventTarget, eventArgument) {

		var theform;

		if (window.navigator.appName.toLowerCase().indexOf("microsoft") > -1) {

			theform = document.per_form;

		}

		else {

			theform = document.forms["per_form"];

		}

		theform.__EVENTTARGET.value = eventTarget.split("$").join(":");

		theform.__EVENTARGUMENT.value = eventArgument;

		theform.submit();

	}

	function initForm(value){

		var limit = document.per_form.duringDropDownlist;

		for (var i=limit.length-1; i>=0; i--){

			limit.options[i] = null;

		}

		if(value == 0){

			for(var i=0; i<first; i++){

				limit.options[i] = new Option(cnyArray[i][0],cnyArray[i][1]);

			}

		}else{

			for(var i=0; i<second; i++){

				limit.options[i] = new Option(forArray[i][0],forArray[i][1]);

			}

		}

		showDate();

	}

	function showDate(){

		var curr = document.getElementById("currencyDropDownList").value;

		var num = document.getElementById("duringDropDownlist").value;

		var rate = frateArray[curr][num];

		var date;

		if(curr == 0){

			date = limitArray1[num];

		}else{

			date = limitArray2[num];

		}

		document.per_form.yRateTextBox.value = rate;

		document.per_form.termTextBox.value = date;

		

		document.per_form.interestTextBox.value = "";

		document.per_form.taxTextBox.value = "";

		document.per_form.resultTextBox.value = "";

	}

// -->

</SCRIPT>



                    <FORM id=per_form method=post name=per_form><LI><SPAN>����:</SPAN> <SELECT style="WIDTH: 134px" 

                    onchange=initForm(this.value) name=currencyDropDownList> 

                      <OPTION selected value=0>�����</OPTION> <OPTION 

                      value=1>��Ԫ</OPTION> <OPTION value=2>Ӣ��</OPTION> <OPTION 

                      value=3>ŷԪ</OPTION> <OPTION value=4>��Ԫ</OPTION> <OPTION 

                      value=5>�۱�</OPTION> <OPTION value=6>���ô�Ԫ</OPTION> <OPTION 

                      value=7>��ʿ����</OPTION> <OPTION value=8>�Ĵ�����Ԫ</OPTION> 

                      <OPTION value=9>�¼���Ԫ</OPTION></SELECT> 

                    <LI><SPAN>��������:</SPAN> <SELECT style="WIDTH: 134px" 

                    onchange=showDate(); name=duringDropDownlist> <OPTION 

                      selected value=0>����</OPTION> <OPTION value=1>������ȡ 

                      ������</OPTION> <OPTION value=2>������ȡ ����</OPTION> <OPTION 

                      value=3>������ȡ һ��</OPTION> <OPTION value=4>������ȡ ����</OPTION> 

                      <OPTION value=5>������ȡ ����</OPTION> <OPTION value=6>������ȡ 

                      ����</OPTION></SELECT> 

                    <LI><SPAN>�����:</SPAN> <INPUT style="WIDTH: 130px" 

                    id=amountTextBox name=amountTextBox> Ԫ 

                    <LI><SPAN>������:</SPAN> <INPUT 

                    style="WIDTH: 130px; COLOR: #404040" id=yRateTextBox 

                    value=0.4000 name=yRateTextBox> (%) 

                    <LI><SPAN>����:</SPAN> <INPUT style="WIDTH: 130px" 

                    id=termTextBox name=termTextBox> �� 

                    <LI style="MARGIN: 12px 8px"><SPAN>&nbsp;</SPAN> <A 

                    onclick=javascript:perSaving() 

                    href="#"><IMG 

                    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 

                    border=0 src="images/form_submit.jpg" width=52 

                    height=19></A> <A 

                    onclick=javascript:document.per_form.reset() 

                    href="#"><IMG 

                    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 

                    border=0 src="images/form_reset.jpg" width=52 

                    height=19></A> 

                    <LI><SPAN>��Ϣ:</SPAN> <INPUT style="WIDTH: 130px" 

                    id=interestTextBox readOnly name=interestTextBox> Ԫ 

                    </FORM></LI></UL>

                  <UL id=tab_b class=hide_tab>

                    <SCRIPT language=Javascript>

function doSubmit(){

	var type = document.getElementById("backType").value;

	var amount = document.getElementById("amount").value;

	var year = document.getElementById("year").value;

	var rate = document.getElementById("rate").value;

	if (amount==""){ 

         alert("�����������!") 

         document.getElementById("amount").focus() 

         window.event.returnValue = false; 

         return

      } 

	  if(isNaN(amount)){ 

         alert("������Ϊ����!") 

         document.getElementById("amount").focus()

         window.event.returnValue = false;

          return

         } 

       if (year==""){ 

         alert("�������������!") 

         document.getElementById("year").focus() 

         window.event.returnValue = false;

          return

      } 

	  if(isNaN(year)){ 

         alert("��������Ϊ����!") 

         document.getElementById("year").focus() 

         window.event.returnValue = false;

          return

         }

       if (rate==""){ 

         alert("���������������!") 

         document.getElementById("rate").focus() 

         window.event.returnValue = false;

         return

      } 

      if(isNaN(rate)){ 

         alert("����������Ϊ����!") 

          document.getElementById("rate").focus()

         window.event.returnValue = false;

          return

         } 

	if(type == 0){

		runjs(msgbrd);

	}else if(type == 1){

		runjs1(msgbrd);

	}

}

function addRow(tbodyName,td1,td2,td3,td4,td5)

{	

	//alert(td1+"|"+td2+"|"+td3+"|"+td4+"|"+td5);

	var tbody  = document.getElementById(tbodyName);

	var row = document.createElement("TR");

	row.align = "center";

	row.height = "20";

	

	cell = document.createElement("TD");

	cell.innerHTML = td1;

	row.appendChild(cell);

	

	cell = document.createElement("TD");

	cell.innerHTML = td2;

	row.appendChild(cell);

	

	cell = document.createElement("TD");

	cell.innerHTML = td3;

	row.appendChild(cell);

	

	cell = document.createElement("TD");

	cell.innerHTML = td4;

	row.appendChild(cell);

	

	cell = document.createElement("TD");

	cell.innerHTML = td5;

	row.appendChild(cell);

	

	tbody.appendChild(row);

}

</SCRIPT>



                    <SCRIPT language=Javascript>

function runjs(obj)

{

document.getElementById("showResult").style.display = "";

amount=parseFloat(obj.amount.value)//�����	

year=parseInt(obj.year.value)//��������

nlx=parseFloat(obj.rate.value)/100//����������

qsh=12*year//����������

ylx=nlx/12//����������

yj=Math.round((ylx/(1-(1/(Math.pow(1+ylx,qsh)))))*amount*100,5)/100//�¾�����

hkzy=yj*qsh//�����ܶ�

document.getElementById("td0").innerHTML = "<b>���µȶ�����</b>";

document.getElementById("td1").innerHTML = year+"��";

document.getElementById("td2").innerHTML = qsh+"��";

document.getElementById("td3").innerHTML = Math.round(nlx*10000,5)/100+"%";

document.getElementById("td4").innerHTML = Math.round(ylx*1000000,5)/1000+"��";

document.getElementById("td5").innerHTML = amount+"Ԫ";

document.getElementById("td6").innerHTML = yj+"Ԫ";

document.getElementById("td7").innerHTML = "<b>���µȶ����ϸ������</b>"; 

cleanTableBody("resultTab");

sybj=amount

yhbj=0

yhlx=0

for (i = 1; i <= qsh; i++)

{

bjlx=Math.round(sybj*ylx*100,5)/100

bjbj=Math.round((yj-bjlx)*100,5)/100

yhlx=Math.round((yhlx+bjlx)*100,5)/100

yhbj=Math.round((yhbj+bjbj)*100,5)/100

sybj=Math.round((amount-yhbj)*100,5)/100

addRow("resultTab",i,yj,bjbj,bjlx,sybj);

}

document.getElementById("tf1").innerHTML = "�ϼ�";

document.getElementById("tf2").innerHTML = yhbj+yhlx;

document.getElementById("tf3").innerHTML = yhbj;

document.getElementById("tf4").innerHTML = yhlx;

document.getElementById("tf5").innerHTML = "/";

document.getElementById("td8").innerHTML = "�������������ο������Ե������н���Ϊ׼��<a href='#' onclick='doReset();'>����</a>";

}</SCRIPT>



                    <SCRIPT language=Javascript>



function runjs1(obj)

{

document.getElementById("showResult").style.display = "";

amount=parseFloat(obj.amount.value)//�����	

year=parseInt(obj.year.value)//��������

nlx=parseFloat(obj.rate.value)/100//����������

qsh=12*year//����������

ylx=nlx/12//����������

yj=Math.round((amount/qsh)*100,5)/100//�»�����

document.getElementById("td0").innerHTML = "<b>���µݼ��������</b>";

document.getElementById("td1").innerHTML = year+"��";

document.getElementById("td2").innerHTML = qsh+"��";

document.getElementById("td3").innerHTML = Math.round(nlx*10000,5)/100+"%";

document.getElementById("td4").innerHTML = Math.round(ylx*1000000,5)/1000+"��";

document.getElementById("td5").innerHTML = amount+"Ԫ";

document.getElementById("td6").innerHTML = yj+"Ԫ";

document.getElementById("td7").innerHTML = "<b>���µݼ�������ϸ������</b>"; 

sybj=amount

yhbj=0

yhlx=0

cleanTableBody("resultTab");

for (i = 1; i <= qsh; i++)

{

bjlx=Math.round(sybj*ylx*100,5)/100

yhlx=Math.round((yhlx+bjlx)*100,5)/100

yhbj=Math.round((yhbj+yj)*100,5)/100

sybj=Math.round((amount-yhbj)*100,5)/100

var temp = Math.round((yj+bjlx)*100,5)/100

addRow("resultTab",i,temp,yj,bjlx,sybj);

}

document.getElementById("tf1").innerHTML = "�ϼ�";

document.getElementById("tf2").innerHTML = yhbj+yhlx;

document.getElementById("tf3").innerHTML = yhbj;

document.getElementById("tf4").innerHTML = yhlx;

document.getElementById("tf5").innerHTML = "/";

document.getElementById("td8").innerHTML = "�������������ο������Ե������н���Ϊ׼��<a href='#' onclick='doReset();'>����</a>";

}

function doReset(){

	document.getElementById("showResult").style.display = "none";

}



function cleanTableBody(tbodyName)

{

	var tbody  = document.getElementById(tbodyName);

	var rows=tbody.getElementsByTagName("TR");

	var size = rows.length;

	for(var i=0;i<size;i++)

	{

		tbody.deleteRow(0);

	}

}

</SCRIPT>



                    <FORM name=msgbrd>

                    <LI><SPAN>��������:</SPAN><SELECT style="WIDTH: 133px" 

                    name=borrowtype> <OPTION selected 

                      value=�������Ҵ���>�������Ҵ���</OPTION> <OPTION 

                      value=��Ѻ����>��Ѻ����</OPTION> <OPTION 

                      value=������Ѻ����>������Ѻ����</OPTION> <OPTION 

                      value=�������ô���>�������ô���</OPTION></SELECT> 

                    <LI><SPAN>������:</SPAN><INPUT name=amount> Ԫ 

                    <LI><SPAN>��������:</SPAN><INPUT name=year> �� 

                    <LI><SPAN>����������:</SPAN><INPUT name=rate> (%) 

                    <LI><SPAN>���ʽ:</SPAN><SELECT style="WIDTH: 133px" 

                    id=backType name=backType> <OPTION selected 

                      value=0>���µȶ�����</OPTION> <OPTION 

                    value=1>���µݼ��������</OPTION></SELECT> 

                    <LI style="MARGIN: 12px 8px"><SPAN>&nbsp;</SPAN> <A 

                    onclick=doSubmit(); 

                    href="#"><IMG 

                    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 

                    border=0 src="images/form_submit.jpg" width=52 

                    height=19></A> <A onclick=javascript:document.msgbrd.reset() 

                    href="#"><IMG 

                    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 

                    border=0 src="images/form_reset.jpg" width=52 

                    height=19></A> </FORM>

                    <DIV style="DISPLAY: none" id=showResult>

                    <DIV id=td0 align=center></DIV>

                    <TABLE border=0 cellSpacing=0 borderColor=#cccccc 

                    borderColorLight=#cccccc borderColorDark=#ffffff 

                    cellPadding=0 width=650 align=center>

                      <TBODY>

                      <TR height=25 align=middle bgColor=#efefef>

                        <TD>����</TD>

                        <TD>����</TD>

                        <TD>������</TD>

                        <TD>������</TD>

                        <TD>�����</TD>

                        <TD>�»�����</TD></TR>

                      <TR height=20 align=middle>



                        <TD id=td1></TD>

                        <TD id=td2></TD>

                        <TD id=td3></TD>

                        <TD id=td4></TD>

                        <TD id=td5></TD>

                        <TD id=td6></TD></TR></TBODY></TABLE>

                    <DIV id=td7 align=center></DIV>

                    <TABLE border=0 cellSpacing=0 borderColorLight=#cccccc 

                    borderColorDark=#ffffff cellPadding=0 width=650 

align=center>

                      <THEAD>

                      <TR height=25 align=middle bgColor=#efefef>

                        <TD>��������</TD>

                        <TD>ÿ�ڻ����</TD>

                        <TD>����Ӧ������</TD>

                        <TD>����Ӧ����Ϣ</TD>

                        <TD>ʣ�౾��</TD></TR></THEAD>

                      <TBODY id=resultTab></TBODY>

                      <TFOOT>

                      <TR height=25 align=middle>

                        <TD id=tf1></TD>

                        <TD id=tf2></TD>

                        <TD id=tf3></TD>

                        <TD id=tf4></TD>

                        <TD id=tf5></TD></TR></TFOOT></TABLE>

                    <DIV id=td8 align=center></DIV></DIV></LI></UL>

                  <UL id=tab_c class=hide_tab>

                    <SCRIPT language=JavaScript type=text/javascript>

function doforeignexchange(){

        var amount=document.lcjsq_wbdhjsq.wbbj.value

        var exrate=document.lcjsq_wbdhjsq.hl.value



      if (amount==""){

         alert("��������ұ���!")

         document.lcjsq_wbdhjsq.wbbj.focus()

         return false;

      }

       if (exrate==""){

         alert("��������ʻ�ѡ�����!")

         document.lcjsq_wbdhjsq.hl.focus()

         return false;

      }

      if(isNaN(amount)){

         alert("����������!")

         document.lcjsq_wbdhjsq.wbbj.focus()

          return false;

         }

      if(isNaN(exrate)){

         alert("����������!")

         document.lcjsq_wbdhjsq.hl.focus()

          return false;

         }



	var result=amount*exrate/100;

	result=Math.round(result*100)

	result=result/100

	result=result+""	

    document.lcjsq_wbdhjsq.bbdhz.value = result

	return false;

}

function docurrencyselect(){

	var thisSelect=document.getElementById("ybz");

	var currencyType=(thisSelect.options[thisSelect.selectedIndex].value);

	var huilv = document.getElementById("hl")

		if(currencyType=='20'){

			huilv.value="682.7";

		}

	

		if(currencyType=='30'){

			huilv.value="88.08";

		}

	

		if(currencyType=='40'){

			huilv.value="6.9844";

		}

	

		if(currencyType=='50'){

			huilv.value="876.92";

		}

	

		if(currencyType=='60'){

			huilv.value="1080.99";

		}

	

		if(currencyType=='70'){

			huilv.value="585.91";

		}

	

		if(currencyType=='80'){

			huilv.value="580.24";

		}

	

		if(currencyType=='90'){

			huilv.value="460.09";

		}

	

		if(currencyType=='91'){

			huilv.value="459.79";

		}

	

}

</SCRIPT>



                    <FORM name=lcjsq_wbdhjsq>

                    <LI><SPAN>ԭ����:</SPAN><SELECT id=ybz 

                    onchange=docurrencyselect(); name=ybz> <OPTION selected 

                      value=20>��Ԫ</OPTION> <OPTION value=30>�۱�</OPTION> <OPTION 

                      value=40>��Ԫ</OPTION> <OPTION value=50>ŷԪ</OPTION> <OPTION 

                      value=60>Ӣ��</OPTION> <OPTION value=70>��ʿ����</OPTION> 

                      <OPTION value=80>���ô�Ԫ</OPTION> <OPTION 

                      value=90>�Ĵ�����Ԫ</OPTION> <OPTION 

                    value=91>�¼���Ԫ</OPTION></SELECT> 

                    <LI><SPAN>�һ�����:</SPAN><SELECT name=dhbz> <OPTION selected 

                      value=1>�����</OPTION></SELECT> 

                    <LI><SPAN>��ұ���:</SPAN><INPUT name=wbbj> Ԫ 

                    <LI><SPAN>��&nbsp;&nbsp;&nbsp;&nbsp;��:</SPAN><INPUT id=hl 

                    name=hl> 

                    <LI><SPAN>���Ҷһ�ֵ:</SPAN><INPUT readOnly name=bbdhz> 

                    <LI>(�����������й������ڻ���Ϊ׼������ʾ�������󣬿��ֹ������Ա���㡣)

                    <LI><SPAN></SPAN><INPUT class=job_search_but onclick=doforeignexchange(); value=���� type=button name=Submit2> 

                    </FORM></LI></UL>

                  <UL id=tab_d class=hide_tab>

                    <SCRIPT language=javascript>

	function nationalDebt(){

        

        var term=document.per_form2.termDropDownList.value;

        var amount=document.per_form2.gzAmountTextBox.value

        var rate=document.per_form2.gzRateTextBox.value



      if (term==0){

         alert("��ѡ�����!")

         window.event.returnValue = false;

         return

      }

      if (amount==""){

         alert("�������ծ���!")

         document.per_form2.gzAmountTextBox.focus()

         window.event.returnValue = false;

         return

      }

	  if(isNaN(amount)){

         alert("����������!")

         document.per_form2.gzAmountTextBox.focus()

         window.event.returnValue = false;

          return

         }

	if(amount<=0){

         alert("����ȷ����!")

         document.per_form2.gzAmountTextBox.focus()

         window.event.returnValue = false;

          return

         }

       if (rate==""){

         alert("�������ծ����!")

         document.per_form2.gzRateTextBox.focus()

         window.event.returnValue = false;

         return

      }

      

      if(isNaN(rate)){

         alert("����������!")

         document.per_form2.gzRateTextBox.focus()

         window.event.returnValue = false;

          return

         }

      

      if(rate<=0){

         alert("����ȷ����!")

         document.per_form2.gzRateTextBox.focus()

         window.event.returnValue = false;

          return

         }

    var interest=term*amount*rate/100

	var result=amount*1+interest;

	interest=Math.round(interest*100)

	interest=interest/100

	interest=interest+""	

    document.per_form2.interestTextBox.value=interest

	result=Math.round(result*100)

	result=result/100

	result=result+""	

    document.per_form2.resultTextBox.value=result

    window.event.returnValue = false;

	}

		</SCRIPT>



                    <FORM id=per_form2 name=per_form2>

                    <LI><SPAN>�涨����:</SPAN><SELECT style="WIDTH: 134px" 

                    name=termDropDownList> <OPTION value="">��ѡ�����</OPTION> 

                      <OPTION selected value=2>2����</OPTION> <OPTION 

                      value=3>3����</OPTION> <OPTION value=5>5����</OPTION> <OPTION 

                      value=10>10����</OPTION></SELECT> 

                    <LI><SPAN>��ծ���:</SPAN><INPUT id=gzAmountTextBox 

                    name=gzAmountTextBox> Ԫ 

                    <LI><SPAN>��ծ���ʣ������ʣ�:</SPAN><INPUT id=gzRateTextBox 

                    name=gzRateTextBox> % 

                    <LI><SPAN></SPAN><A onclick=javascript:nationalDebt() 

                    href="#"><IMG 

                    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 

                    border=0 src="images/form_submit.jpg" width=52 

                    height=19></A> <A 

                    onclick=javascript:document.per_form2.reset() 

                    href="#"><IMG 

                    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 

                    border=0 src="images/form_reset.jpg" width=52 

                    height=19></A> 

                    <LI><SPAN>��ծ��Ϣ:</SPAN><INPUT id=interestTextBox readOnly 

                    name=interestTextBox> 

                    <LI><SPAN>��Ϣ�ϼ�:</SPAN><INPUT id=resultTextBox readOnly 

                    name=resultTextBox> Ԫ 

                    <LI><INPUT id=selectedTerm value=2 type=hidden> 

                  </FORM></LI></UL>

                  <DIV class=clear></DIV></DIV></DIV></DIV>

			</div>
			<div style="margin-left: 800px;font-size:20px;">
			<br/>
			��Ʋο�
			<br/><br/>
			����<a href="https://bao.alipay.com/yeb/index.htm" target="_blank">https://bao.alipay.com/yeb/index.htm</a>
			<br/><br/>
			�ٶȽ��ڣ�<a href="https://8.baidu.com/" target="_blank">https://8.baidu.com/</a>
			<br/><br/>
			������ƣ�<a href="http://finance.ccb.com/cn/finance/product.html" target="_blank">http://finance.ccb.com/cn/finance/product.html</a>
			<br/>


</div>
		</div>		
	
	
		<div class="footer-bottom">	
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;̫ԭ����ѧ</p>
			</div>
		</div>
  </body>
</html>
