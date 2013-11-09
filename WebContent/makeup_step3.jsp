<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>多媒体制作</title>
<link rel="stylesheet" href="css/bg.css" type="text/css"/>
<style>
#btn_btn{
background-image: url("images/btn.jpg");
background-position: 43% 52%;
height:40px;
}
</style>
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
		<div class="select"><font face="华文行楷">选择图片
		</font>
		<div>
		<img width="150" height="150" src="source/bground/tree.jpg" name="x1" style="cursor:pointer;"  onclick="javascript:window.open(this.src);" style="cursor:pointer;"/>
		<select name="bgroundpage" onChange="document.x1.src=options[selectedIndex].value">
			<option value="source/bground/tree.jpg">选择图片1</option>
			<option value="source/bground/bg2.jpg">选择图片2</option>
			<option value="source/bground/bg3.jpg">选择图片3</option>
			<option value="source/bground/bg1.jpg">选择图片4</option>
		</select>
		</div>
		<div class="bm"><font face="华文行楷">选择模版
		</font><br>
		<img width="150" height="150" src="source/model/tree.jpg" name="x2" style="cursor:pointer;"  onclick="javascript:window.open(this.src);" style="cursor:pointer;"/>
		<select name="modelpage" onChange="document.x2.src=options[selectedIndex].value">
			<option value="source/model/tree.jpg">选择模版1</option>
			<option value="source/model/bg2.jpg">选择模版2</option>
			<option value="source/model/bg3.jpg">选择模版3</option>
			<option value="source/model/bg1.jpg">选择模版4</option>
		</select>
		</div>
		</div>
		<div class="step3_up">
		<input  id="next"  type="button" value="上一步"onclick="window.location.reload('makeup_step2.jsp')"/>
		<input  id="next" type="submit" style="margin-left:10px;"value="下一步"/>
		</div>
	</s:form>
	</div>
</div>
</body>
</html>