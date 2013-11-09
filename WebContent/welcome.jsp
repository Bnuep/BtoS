<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>欢迎界面</title>
<link href="css/welcome/welcome.css" rel="stylesheet" type="text/css" />
<link href="css/menu/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript">
function change(ad){
	var sp = document.getElementById("ds");
	sp.src = ad ;
	/*$("#ds").src=ad;*/
}
</script>
</head>
<body>
<div id="headDiv">
				<!--顶部-->
					<!--学校图标及皮肤说明图标-->
					<div class="logo" style="position:absolute;">
						<img src="images/welcome/logo.png" alt="学校图标"/></div>

					<!--登录信息及工具-->
					<div class="info" style="position:absolute;right:0px;">
						<td>欢迎您：<span id="username"></span></td>       
                        <td><a id="exit" href="javascript:()">安全退出</a></td>
					</div>
					<!--登录信息及工具-->
	<!--顶部-->
</div>

<div id="mainDiv">
<!--中部-->
 <!--下拉菜单-->
 <div id="navcont">
<div id="nav"> 
<ul>
 <li><a href="javascript:change('login.html')">主页</a></li>
 <li><a href="#">关于我们</a></li>
 <li><a href="#">多媒体课件</a>
  <ul>
   <li><a href="#">创建</a></li>
   <li><a href="#">管理空间</a></li>
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
<div id="main"><iframe id="ds" width=100% height=460px src="home.jsp" frameborder=0></iframe></div>
<!--中部-->	
</div>

<div id="footerDiv">
				<!--底部-->	
				<div class="footer" style =" margin-bottom:20px; margin-top:0px;" >
					<p align="center">
						北京师范大学珠海分校 &copy 版权所有					</p>
				</div>
				<!--底部-->
</div>
</body>
</html>

