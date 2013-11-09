<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="imagetoolbar" content="no">
<link rel="stylesheet" type="text/css" href="css/img.css" />
<script type="text/javascript" src="js/jquery-roll.js"></script>
<script>
function change(ad){
	var sp = document.getElementById("ds");
	sp.src = ad ;
	/*$("#ds").src=ad;*/
}
</script>
</head>
<body>
	<div id="screen">
		<div id="box">
			<img src="images/roll/sina.jpg" title="home" alt="">
			<img src="images/roll/add.jpg" title="About us" alt=""> 
			<img src="images/roll/whitemagic.jpg" title="Makeup"	alt="">
			<img src="images/roll/gazebo2k3.jpg" title="mundane"	alt=""> 
			<img src="images/roll/pyre.jpg" title="inhumane"	alt="">
			<img src="images/roll/singularity.jpg" title="Management"alt="">
			<img src="images/roll/spellcraft.jpg" title="Personal Info"alt=""> 
			<span id="txt"></span> 
			<span id="tit"></span> 
			<span id="lnk"> 
			<a href="home.jsp">主页</a><a>关于我们</a><a href="theme.jsp">多媒体制作</a> 
			<a ></a> <a></a>
			<a >管理</a>
			<a href="#">个人信息</a>
			</span>
		</div>
	</div>

</body>
</html>