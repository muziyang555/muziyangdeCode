<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>���÷���</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
<link rel="stylesheet" href="css/common.css"/>
<script src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/highcharts.js"></script> 
    <script type="text/javascript" src="js/myCharts.js"></script>  
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*�ܿ��ƣ��ɺ��Դ���*/
</style>



</head>
  
<body>
<!-- banner -->
<div class="banner" style="background:#fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.action">��ͥ���ϵͳ</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.action">��ҳ</a></li>
								<li><a href="moneyout.action">��ͥ��֧</a></li>
								<li><a href="moneyin.action">��ͥ����</a></li>
								<li><a href="moneytools.action">ʵ�ù���</a></li>
								<li class="active"><a href="moneyfenxi.action">���÷���</a></li>
								<li><a href="familymumber.action">��ͥ��Ա</a></li>						
							</ul>
						</div>
					</nav>
					<a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">��ȫ�˳�</a>
			</div>
		</div>	
		<div class="body">
		
		<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
		</div>	
		<div id="container1" style="width: 550px; height: 400px; margin: 0 auto"></div>
		
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
$(function () {
    $('#container1').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: '��֧����'
        },
        tooltip: {
            headerFormat: '{series.name}<br>',
            pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                },
                states: {
                    hover: {
                        enabled: false
                    }  
                },
                slicedOffset: 20,         // ͻ�����
                point: {                  // ÿ�����������ݵ���������¼�Ӧ��д�� point ����
                    events: {
                        // ��껬���ǣ�ͻ����ǰ����
                        mouseOver: function() {
                            this.slice();
                        },
                        // ����Ƴ�ʱ���ջ�ͻ����ʾ
                        mouseOut: function() {
                            this.slice();
                        },
                        // Ĭ���ǵ��ͻ�����������ε�
                        click: function() {
                            return false;
                        }
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: '��֧����',
            data: [
                ['����', 26.8  ],
                ['֧��', 45.0  ],
                
            ]
        }]
    });
});
</script>
<script language="JavaScript">
$(document).ready(function() {
   var title = {
       text: '��ͥ��֧���'   
   };
   var subtitle = {
        text: ''
   };
   var xAxis = {
       categories: ['${miList.get(0).time}', '4��10��', '4��11��', '4��12��', '4��13��', '${miList.get(1).time}'
              ,'4��15��', '4��16��', '4��17��', '4��19��', '4��20��', '4��24��','4��25��']
   };
   var yAxis = {
      title: {
         text: '��� (Ԫ)'
      },
      plotLines: [{
         value: 0,
         width: 1,
         color: '#808080'
      }]
   };   

   var tooltip = {
      valueSuffix: 'Ԫ'
   }

   var legend = {
      layout: 'vertical',
      align: 'right',
      verticalAlign: 'middle',
      borderWidth: 0
   };

   var series =  [
      {
         name: '����',
         data: [${miList.get(0).money}, 0, 0, 0, 0, ${miList.get(1).money}, 0,
            0, 0, ${miList.get(2).money}, 0, 0]
      }, 
      {
         name: '֧��',
         data: [${moList.get(0).money},${moList.get(1).money},${moList.get(2).money},${moList.get(3).money},${moList.get(4).money},${moList.get(5).money},${moList.get(6).money},${moList.get(7).money},${moList.get(6).money},${moList.get(9).money},${moList.get(10).money},${moList.get(11).money},${moList.get(12).money}]
      }, 
      
   ];

   var json = {};

   json.title = title;
   json.subtitle = subtitle;
   json.xAxis = xAxis;
   json.yAxis = yAxis;
   json.tooltip = tooltip;
   json.legend = legend;
   json.series = series;

   $('#container').highcharts(json);
});
</script>
