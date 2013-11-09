<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>多媒体制作</title>
<link rel="stylesheet" href="css/makeup/bg.css" type="text/css"/>
<style>
.new{margin-left:170px;top:132px;}
#pop{position:absolute;line-height:30px;margin-left:80px;margin-top:-20px;padding:2px;width:90px;height:45px;display:none;background:url(images/call/col.png);z-index:1;}
.pop_btn{margin-left:185px;}
</style>
<script type="text/javascript">
function goedit(thisobject){
	thisobject.style.background="silver";
}
function edit(o){
	o.style.background="white";
}

function cc(tt) {
		var e = document.getElementById("pop");
		var t = tt.offsetTop; //TT控件的定位点高 
		var h = tt.clientHeight; //TT控件本身的高 
		var l = tt.offsetLeft; //TT控件的定位点宽 
		var ttyp = tt.type; //TT控件的类型 
		while (tt = tt.offsetParent) {
			t += tt.offsetTop;
			l += tt.offsetLeft;
		}
		e.style.top = (ttyp == "button") ? t + h : t -35; //层的 Y 坐标 
		e.style.left = l + 1 - 80; //层的 X 坐标 
		e.style.display = "block"; //层显示 
		e.style.textAlign = "center";
		e.innerText = window.event.srcElement.alt;
}
</script>
</head>
<body>
<div id="pop"></div>
<div id="complete">
	<div id="main_div">
		<button id="back" alt="返回上层" onmouseover="cc(this)"  onmouseout="document.all.pop.style.display='none'"onclick="window.location.reload('makeup_step4.jsp')">返回</button>
		<s:form action="pageloadAct">
		<input id="save" alt="先保存" onmouseover="cc(this)"  onmouseout="document.all.pop.style.display='none'" type="submit" value="保存"  />
		</s:form>
		<s:form action="completeAct">
		<button id="done" alt="开始制作" onmouseover="cc(this)" onmouseout="document.all.pop.style.display='none'">完成</button><br/><br/>
		</s:form>
		<input id="new" type="button" value="新建一页" class="new1"onclick="window.location.reload('makeup.jsp')"/>
	</div>
	</div>

</body>
</html>