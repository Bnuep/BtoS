<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="css/css.css" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript">
function change(ad){
	var sp = document.getElementById("ds");
	sp.src = ad ;
	/*$("#ds").src=ad;*/
}
$(document).ready(function(){
$(".flip").click(function(){
    $(".panel").slideToggle("slow");
  });
});

function do_list_row_show(strid){
	strid.getElementsByTagName('a')[0].className='on';
	strid.getElementsByTagName('span')[0].style.display="block";
	strid.style.position="relative";
}
function do_list_row_unshow(strid){
	strid.getElementsByTagName('a')[0].className='';
	strid.getElementsByTagName('span')[0].style.display="";
	strid.style.position="";
}

</script>
</head>
<body>
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
	
</body>
</html>
