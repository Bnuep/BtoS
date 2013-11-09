<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/makeup/title.css" type="text/css"/>
<script type="text/javascript">
function go(){
	window.location.reload('make.jsp');
}
</script>
</head>
<body>
<div id="theme">
	<div id="themeDiv">
	<s:form action="pptloadAct" method="post">
		<div class="title"><input name="title" type="text" /></div>
		<div class="makeup"><input id="next" type="submit" value="创建" /></div>
	</s:form>
	</div>
	
</div>
</body>
</html>