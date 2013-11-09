<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bg.css" type="text/css"/>
<script type="text/javascript">
function go(){
	window.location.reload('makeup.jsp');
}
</script>
</head>
<body>
<div id="main">
	<div id="main_div">
	<s:form action="pptloadAct">
		<div class="tittle"><font face="华文行楷">主题：</font><input name="tittle" type="text" /></div>
		<div class="up">
		<input id="next" style="position:absolute;" type="submit" value="创建" />
		</div>
	</s:form>
	</div>
	
</div>
</body>
</html>