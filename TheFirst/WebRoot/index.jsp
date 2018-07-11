<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>主页</title>
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel='stylesheet' type='text/css'  href="css/style.css"/>	
<script src="js/jquery-1.11.1.min.js"></script>

<style>
body{font-family:Arial; font-size:15px;line-height:180%;} 
#body{background-color: #ccc}
</style>


</head>
  
    <body>
<!-- banner -->
<div class="banner" style="background: #fdf5ce">
		<div class="header">
			<div class="container">
				<div class="logo" style={color:#fff;}> 
					<h1><a href="index.jsp" style="font-size:36px;color:#fff;">家庭理财系统</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.action">主页</a></li>
								<li><a href="moneyout.action?user.Username=<s:property value="user.UserName"/>" style="color:#fff;background-color: #6CBC35;">家庭开支</a></li>
								<li><a href="moneyin.action" style="color:#fff;background-color: #6CBC35;">家庭收入</a></li>
								<li><a href="moneytools.action" style="color:#fff;background-color: #6CBC35;">实用工具</a></li>
								<li><a href="moneyfenxi.action" style="color:#fff;background-color: #6CBC35;">经济分析</a></li>
								<li><a href="familymumber.action??user.UserName=<s:property value="user.UserName"/>" style="color:#fff;background-color: #6CBC35;">家庭成员</a></li>													    
							</ul>
						</div>
						
					</nav>
					<%-- <s:property value="user.UserName"/> --%><a href="UserLogin.jsp" style="color:#fff;background-color: #6CBC35;">安全退出</a>
			</div>
			
		</div>
	<div class="body" style="html, body, div, span, applet, object, iframe,
	h1, h2, h3, h4, h5, h6, p, blockquote, pre,
	a, abbr, acronym, address, big, cite, code,
	del, dfn, em, img, ins, kbd, q, s, samp,
	small, strike, strong, sub, sup, tt, var,
	b, u, i, center,
	dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td,
	article, aside, canvas, details, embed, 
	figure, figcaption, footer, header, hgroup, 
	menu, nav, output, ruby, section, summary,
	time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}">   
		<script src="indexpicture/js/jquery-1.8.3.min.js"></script>
		<script src="indexpicture/js/jquery.tiles.js"></script>
		<link rel="stylesheet" href="indexpicture/css/styles.css" media="screen">
		<!--必要样式表-->
		<link rel="stylesheet" href="indexpicture/css/jquery.tiles.min.css">
		
<button type="button" class="start action" >滚动起来</button>

<div class="slider-wrap">
	<div class="slider">
		<p><strong>理财:</strong> 让生活更美好.</p>
		<img src="indexpicture/img/img01.png"><p><strong>理财:</strong> 让生活更美好.</p>
		<img src="indexpicture/img/img02.png"><p><strong>理财:</strong> 记录生活点滴.</p>
		<img src="indexpicture/img/img03.png"><p><strong>理财:</strong> 发现生活之美.</p>
		<img src="indexpicture/img/img04.png"><p><strong>理财:</strong> 分享经济之道.</p>

<script type="text/javascript">
var $slider = $('.slider-wrap');
var html = $slider.html();

// Options

var defaults = {
	thumbSize:20,
	onSlideshowEnd:function(){
		$('.stop, .start').toggle()
	}
};

var effects = {
	'default': { x:6, y:4, random: true }
};

$('#effects-select').change(function(){
	var effect = $(this).val();
	$slider.fadeTo( 0,0 ).html( html );
	$('.stop').hide();
	$('.start').show();
	
	setTimeout(function(){
		$('.slider').tilesSlider($.extend( {}, defaults, effects[ effect ]));
		$slider.fadeTo( 0,1 );
		$('body').removeClass('tiles-preload');
	}, 100 );
	
	$('.code').empty().html(function() {
		var e = effects[ effect ], c = [];
		for ( var i in e ) {
			if ( i !== 'effect' ) {
				c.push('<code>'+ i +': '+ e[i] +'</code>');
			}
		}
		return c.join('');
	});
});

$('.start').click(function() {
	$(this).hide();
	$('.slider').tilesSlider('start');
});


$('.slider').tilesSlider( $.extend( {}, defaults, effects['default'] ) );

</script>
		</div>

</div>
<div class="calendar" style=" heigh:300px;font-size:24px;" >

    <% java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
     "yyyy-MM-dd");    
   java.util.Date currentTime = new java.util.Date();    
   String time = simpleDateFormat.format(currentTime).toString();  
   out.println("今天是："+time);  
     %>  
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
    欢迎<s:property value="user.UserName"/>使用本系统
</div>
		


		










	</div>
	</div>
	
	<div class="footer-bottom">
			<div class="container">
				<p>Copyright &copy; &nbsp;&nbsp;&nbsp;&nbsp;2017 &nbsp;&nbsp;&nbsp;&nbsp;太原理工大学</p>
			</div>
	</div>
</body>
</html>
