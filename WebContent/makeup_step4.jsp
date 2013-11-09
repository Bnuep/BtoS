<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/upload.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-mouseover.js"></script>
<script type="text/javascript">
function show(o){ 
	var o = document.getElementById(o); 
	o.style.display = ""; 
	} 
function imagepageset(imageselect){
	var s = imageselect.src;
	var src = s.slice(27); //截取字符串http://localhost:8080...
	document.getElementById("imageselect").value = src;
	document.getElementById("sel").style.display = "none";
	
}
</script>
<style>
#pop{position:absolute;line-height:30px;margin-left:80px;margin-top:-20px;padding:2px;width:90px;height:45px;display:none;background:url(images/call/col.png);z-index:1;}
*{margin:0;padding:1px;list-style-type:none;}
img{border:0;}
.demo{margin:20px auto 0 15px;width:480px;height:200px;border:1px solid silver;background-image:url(images/pic.png);}
ul#menu li{float:left;position:relative;width:60px;height:60px;padding:0 5px;margin-left:5px;margin-top:10px;}
ul#menu li img{position:absolute;width:60px;overflow:hidden;}
</style>
</head>
<body>
	<!-- 弹出层 -->
	<div id="sel" style="display:none;">
	<div><s:form action="">	
	<input id="upload" value="+" type="button" alt="上传图片" onmouseover="cc(this)"  onmouseout="document.all.pop.style.display='none'"/></s:form></div>
		<input id="close" value="X" type="button" onclick="document.all.sel.style.display='none'"/>
			<div class="demo">
				<img src="images/uploadPic/delicious.png" onclick="imagepageset(this)"/>
				<img src="images/uploadPic/email.png" onclick="imagepageset(this)"/>
				<img src="images/uploadPic/facebook.png" onclick="imagepageset(this)"/>
				<img src="images/uploadPic/feed.png" onclick="imagepageset(this);"/>
				<img src="images/uploadPic/technorati.png" onclick="imagepageset(this)"/>
				<img src="images/uploadPic/twitter.png" onclick="imagepageset(this)"/>
			</div>
	</div>
	<!-- 编辑区 -->
	<div class="pic">
			<s:form action="pagesetAct">
			<input id="imageselect" name="imagepage"  type="hidden" value="">
			<div id="sel_pic"><font>插入图片：</font></div> 
			<input id="select_pic" type="button" value="select" onclick="show('sel');" />
			<div id="radio">
			<input type="radio" name="location" value="left" checked="checked"/>内容左边
			<input type="radio" name="location" value="center"/>内容居中
			<input type="radio" name="location" value="right"/>内容右边
			</div>
			<div id="btn">
			<input id="up" type="button" onclick="window.location.reload('makeup_step3.jsp')" value="上一步" />
			<input id="next" type="submit" value="下一步" />
			</div>
		</s:form>
	</div>
</body>
</html>