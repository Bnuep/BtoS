<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>多媒体制作</title>
<link rel="stylesheet" href="css/bg.css" type="text/css"/>
<script type="text/javascript">
function goedit(thisobject){
	thisobject.style.background="silver";
}
</script>
</head>
<body>
<div id="main">
	<div id="main_div">
	<s:form action="pagesetAct">
		<div class="content"><font face="华文行楷">课题内容：<br></font><textarea name="contentpage" cols="30" rows="8" onclick="goedit(this)" style="background-image:url(images/lang.jpg);z-index:-1;margin-left:120px;margin-top:-25px;"></textarea></div>
		<div class="cot">
		<input id="next" type="button" value="上一步" onclick="window.location.reload('makeup.jsp')"/>
		<input id="next" type="submit" style="margin-left:6px;" value="下一步"/>
		</div>
		</s:form>
	</div>
	
</div>
</body>
</html>