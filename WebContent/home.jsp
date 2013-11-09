<%@ page language="java"  contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:action name="pptgetAct" executeResult="false"></s:action>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="imagetoolbar" content="no">
<link rel="stylesheet" type="text/css" href="css/img.css" />
<script type="text/javascript" src="js/jquery-roll.js"></script>
</head>
<body>
	<div id="screen">
		<div id="box">
		<img src="images/roll/add.jpg" title="添加" alt=""> 
		<s:iterator value="#request.ppts">
			<img src="images/roll/sina.jpg" title="<s:property value="title" />" alt="">	
		</s:iterator>
		<span id="txt"></span>
		<span id="tit"></span>
		<span id="lnk">
		<a></a>
		<s:iterator value="#request.ppts"> 
			<a href="viewpptAct.action?istitle=<s:property value="title" />"></a>
		</s:iterator>
		</span>
			
		</div>
	</div>

</body>
</html>