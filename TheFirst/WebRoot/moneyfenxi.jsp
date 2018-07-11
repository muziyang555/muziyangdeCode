<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
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
    <script type="text/javascript" src="js/highcharts.js"></script> 
    <script type="text/javascript" src="js/myCharts.js"></script>  
<style>
body{font-family:Arial; font-size:15px;line-height:180%;} /*总控制，可忽略此行*/
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
								<li class="active"><a href="moneyfenxi.action">经济分析</a></li>
								<li><a href="familymumber.action">家庭成员</a></li>						
							</ul>
						</div>
					</nav>
					<a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">安全退出</a>
			</div>
		</div>	
		<div class="body">
		
		<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
		</div>	
		<div id="container1" style="width: 550px; height: 400px; margin: 0 auto"></div>
		
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
$(function () {
    $('#container1').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: '收支比重'
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
                slicedOffset: 20,         // 突出间距
                point: {                  // 每个扇区是数据点对象，所以事件应该写在 point 下面
                    events: {
                        // 鼠标滑过是，突出当前扇区
                        mouseOver: function() {
                            this.slice();
                        },
                        // 鼠标移出时，收回突出显示
                        mouseOut: function() {
                            this.slice();
                        },
                        // 默认是点击突出，这里屏蔽掉
                        click: function() {
                            return false;
                        }
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: '收支比重',
            data: [
                ['收入', 26.8  ],
                ['支出', 45.0  ],
                
            ]
        }]
    });
});
</script>
<script language="JavaScript">
$(document).ready(function() {
   var title = {
       text: '家庭收支情况'   
   };
   var subtitle = {
        text: ''
   };
   var xAxis = {
       categories: ['${miList.get(0).time}', '4月10日', '4月11日', '4月12日', '4月13日', '${miList.get(1).time}'
              ,'4月15日', '4月16日', '4月17日', '4月19日', '4月20日', '4月24日','4月25日']
   };
   var yAxis = {
      title: {
         text: '金额 (元)'
      },
      plotLines: [{
         value: 0,
         width: 1,
         color: '#808080'
      }]
   };   

   var tooltip = {
      valueSuffix: '元'
   }

   var legend = {
      layout: 'vertical',
      align: 'right',
      verticalAlign: 'middle',
      borderWidth: 0
   };

   var series =  [
      {
         name: '收入',
         data: [${miList.get(0).money}, 0, 0, 0, 0, ${miList.get(1).money}, 0,
            0, 0, ${miList.get(2).money}, 0, 0]
      }, 
      {
         name: '支出',
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
