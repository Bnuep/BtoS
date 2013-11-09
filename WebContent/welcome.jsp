<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>欢迎登录多媒体生成系统</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/welcome/welcome.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="js/jquery.bubbleup.js"></script>
<style>
*{margin:0;padding:0;list-style-type:none;}
.demo{margin:20px;right:-15px;width:162px;height:428px;position:absolute;background-image:url(images/lan-bg.png);padding:2px;border:1px solid silver;}
a,img{border:0;}
ul#list li{margin-left:50px;position:relative;width:48px;height:48px;padding:0 5px;}
ul#list li img{position:absolute;width:48px;top:0px;left:0px;overflow:hidden;}
</style>
<script type="text/javascript">
$(function(){
    $("ul#list li img").bubbleup({tooltip: true, scale:96});
});
function change(ad){
	var sp = document.getElementById("ds");
	sp.src = ad ;
	/*$("#ds").src=ad;*/
}
$("#img").hover(function(){
	alter("dfa");
},function(){
	
});
</script>
</head>
<body>
<div id="headDiv">
					<div class="logo" style="position:absolute;"><img src="images/welcome/logo.png" alt="学校图标"/></div>
					<div class="info" style="position:absolute;right:0px;">
						<td>欢迎！<s:property value="tip" /></td>       
                        <td><a id="exit" href="login.jsp">安全退出</a></td>
                       <div style="margin-top:2px;" class="photo">
                       		<a target=blank href=http://wpa.qq.com/msgrd?V=1&Uin=438676673&amp;amp;Site=spohome.blogchina.comMenu=yes>
							<img width="85px" height="25px" border="0" src="images/qqonline.jpg"></img>
							<span>qq在线！</span></a>
						</div>
					</div>
</div>
<div id="mainDiv">
<div id="navcont">
 <div id="mainpart"> <iframe id="ds" style="margin-left:-5%;" width=100%  height=530px src="" frameborder=0></iframe></div>	
<div id="menu">
	<br/>
  <ul>
    <li><a href="mainPage.jsp">主页</a></li>
    <li><a href="#">关于我们</a></li>
    <li><a href="#">多媒体制作</a>
    	<ul><li><a href="javascript:change('theme.jsp')">制作课件</a></li>
			<li><a href="#">管理</a></li>
		</ul>
    </li>
    <li><a href="#">个人信息</a>
    	<ul>
    		<li><a href="#">修改密码</a></li>
    	</ul>
    </li>

  </ul>
</div>
</div>
<div class="demo">
	<ul id="list">
		<li><a href="#"><img src="images/uploadPic/feed.png" alt="Feed"/></a></li>
		<li><a href="#"><img src="images/uploadPic/email.png" alt="E-Mail"/></a></li>
		<li><a href="#"><img src="images/uploadPic/twitter.png" alt="Twitter"/></a></li>
		<li><a href="#"><img src="images/uploadPic/facebook.png" alt="FaceBook"/></a></li>
		<li><a href="#"><img src="images/uploadPic/delicious.png" alt="Save it!"/></a></li>
		<li><a href="#"><img src="images/uploadPic/technorati.png" alt="blog"/></a></li>
	</ul>
</div>
</div>

<div id="footerDiv"><p align="center">版权所有©北京师范大学珠海分校</p></div>
</body>
</html>

