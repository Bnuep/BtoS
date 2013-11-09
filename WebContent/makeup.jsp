<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/makeup/bg.css" type="text/css"/>
<style>
.pop{position:absolute;left:50%;top:10%;width:300px;height:100px;background:#eee;border:1px solid #ccc;z-index:1;} 
.pop_head{position:absolute;height:20px;background:#ccc} 
.pop_head a{margin-left:265px;line-height:20px;color:#000;text-decoration:none;} 
.pop_head a:hover{color:#f60;text-decoration:none} 
.pop_body{padding:8px;margin-top:30px;} 
.pop_btn{margin-left:185px;}
</style>
<script type="text/javascript">
function goedit(thisobject){
	thisobject.style.background="silver";
}
function bg(o){
	o.style.background="white";
}
var url = ''; 
function show(o){ 
var o = document.getElementById(o); 
o.style.display = ""; 
} 
function hide(o){ 
var o = document.getElementById(o); 
o.style.display = "none"; 
window.location = url; 
}
</script> 
</head>
<body>
<s:form action="titlepageloadAct">
<div id="pop" class="pop" style="display:none"> 
<div class="pop_head"><a href="javascript:void(0);" onclick="hide('pop')">关闭</a></div> 
<div class="pop_body">
	<%
         out.println("<select name='fontsize'>");
             out.println("<option value='0'>请选择字体大小</option>");
             for(int i = 8; i <= 20 ; i ++)
             {
                 out.println("<option value='" + i + "'>" + i + "</option>");
             }
         out.println("</select>");
	%>
		<%
         out.println("<select name='fontcolor'>");
             out.println("<option value='0'>字体颜色</option>");
             for(int i = 8; i <= 20 ; i ++)
             {
                 out.println("<option value='" + i + "'>" + i + "</option>");
             }
         out.println("</select>");
	%>
	<%out.println("<input type='button'value='B' onchange='bg(this)' onclick='goedit(this)'/>");%>
</div>
<div class="pop_btn">
<input  type="button" value="取消" onclick=""/>
<input type="submit" value="确定" onclick="hide('pop')"/></div> 
</div>
</s:form> 
<!-- 主页面布局-->
<div id="title">
	<div id="main_div">
	<s:form action="pagesetAct">
		<div class="title"><input name="tittlepage" type="text" onchange='bg(this)'onclick="goedit(this)"/>
		<input class="btn_set" type="button" href="javascript:void(0);" value="设置" onclick="show('pop')"/></div>
		<div class="up">
		<input id="next" type="submit" value="下一步"/>
		</div>
	</s:form>
	</div>
</div>

</body>
</html>