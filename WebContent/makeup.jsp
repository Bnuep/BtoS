<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/makeup/mekeup.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<style>
body{}
.pop {
	position: absolute;
	left:100px;
	top:40px;
	width: 300px;
	height: 100px;
	background: #eee;
	border: 1px solid #ccc;
	z-index: 1;
}

.pop_head {
	position: absolute;
	height: 20px;
	background: #ccc
}

.pop_head a {
	margin-left: 265px;
	line-height: 20px;
	color: #000;
	text-decoration: none;
}

.pop_head a:hover {
	color: #f60;
	text-decoration: none
}

.pop_body {
	padding: 8px;
	margin-top: 30px;
}

.pop_btn {
	margin-left: 185px;
}
</style>
<script type="text/javascript">
$(function () {
	$("#tit").focus(function(){
    $("#tit").css("background-color","#fbf6c9");
  		});
 	$("#tit").blur(function(){
    $("#tit").css("background-color","#fff");
  		});		
 	$("#cont").focus(function(){
 	    $("#cont").css("background-color","#fbf6c9");
 	  		});
 	 	$("#cont").blur(function(){
 	    $("#cont").css("background","#fff");
 	  		});	
 	 	
    });
	function bg(o) {
		o.style.background = "white";
	}
	var url = '';
	function show(o) {
		var o = document.getElementById(o);
		o.style.display = "";
	}
	function hide(o) {
		var o = document.getElementById(o);
		o.style.display = "none";
		window.location = url;
	}
</script>
</head>
<body>
	<s:form action="titlepageloadAct">
		<div id="pop" class="pop" style="display: none">
			<div class="pop_head">
				<a href="javascript:void(0);" onclick="hide('pop')">关闭</a>
			</div>
			<div class="pop_body">
				<%
					out.println("<select name='fontsize'>");
						out.println("<option value='0'>请选择字体大小</option>");
						for (int i = 8; i <= 20; i++) {
							out.println("<option value='" + i + "'>" + i + "</option>");
						}
						out.println("</select>");
				%>
				<%
					out.println("<select name='fontcolor'>");
						out.println("<option value='0'>字体颜色</option>");
						for (int i = 8; i <= 20; i++) {
							out.println("<option value='" + i + "'>" + i + "</option>");
						}
						out.println("</select>");
				%>
				<%
					out.println("<input type='button'value='B' onchange='bg(this)' onclick='goedit(this)'/>");
				%>
			</div>
			<div class="pop_btn">
				<input type="submit" value="确定" onclick="hide('pop')" />
			</div>
		</div>
	</s:form>
	<!-- 主页面布局-->
	<div id="makeup" style="margin-left:20%;">
	<!-- title -->
		<div class="title"style="margin-left:100px;">
			
			标题：<input name="titlepage" id="tit" style="background:#fff;"type="text" /> 
					<input class="btn_set" type="button" href="javascript:void(0);" value="设置" onclick="show('pop')" />
			
		</div>
		<br>
	<!-- content -->
		<div class="content"style="margin-left:100px;">
			<div class="cot" style="position:absolute;float:left;">
				课题内容：<br/><textarea id="cont" style="background:#fff;" name="contentpage" cols="30" rows="8"
					onclick="goedit(this)"></textarea>
			</div>
			<div class="pic" style="margin-left:350px;float:left;position:absolute;">
			插入图片：<input id="imageselect" name="imagepage"  type="hidden" value="">
			<input id="select_pic" type="button" value="选择" onclick="show('sel');" />
			<p>插入到：
			<input type="radio" name="location" value="left" checked="checked"/>内容左边
			<input type="radio" name="location" value="center"/>内容居中
			<input type="radio" name="location" value="right"/>内容右边
			</p>
		</div>
		</div><br>
	<!-- uploadPic -->
		<div class="uploadPic" style="margin-left:100px;margin-top:170px;width:600px;height:300px;">

			<div class="select" style="position:absolute;float:left;">
				<font face="华文行楷">插入背景 </font>
				<div>
					<img width="140" height="140" src="source/bground/tree.jpg"
						name="x1" style="cursor: pointer;"		onclick="javascript:window.open(this.src);"
						style="cursor:pointer;" /> <select name="bgroundpage"
						onChange="document.x1.src=options[selectedIndex].value">
						<option value="source/bground/tree.jpg">选择图片1</option>
						<option value="source/bground/bg2.jpg">选择图片2</option>
						<option value="source/bground/bg3.jpg">选择图片3</option>
						<option value="source/bground/bg1.jpg">选择图片4</option>
					</select>
				</div>
			</div>
	<!-- uploadVm -->
				<div class="bm" style="position:absolute;float:left;margin-left:320px;">
					<font face="华文行楷">选择模版 </font><br> <img width="140"
						height="140" src="source/model/tree.jpg" name="x2"
						style="cursor: pointer;"
						onclick="javascript:window.open(this.src);"
						style="cursor:pointer;" /> 
					<select name="modelpage"
						onChange="document.x2.src=options[selectedIndex].value">
						<option value="source/model/tree.jpg">选择模版1</option>
						<option value="source/model/bg2.jpg">选择模版2</option>
						<option value="source/model/bg3.jpg">选择模版3</option>
						<option value="source/model/bg1.jpg">选择模版4</option>
					</select>
				</div>
	
				<div style="top:450px;position:absolute;margin-left:250px;"><input type="button" value="保存"></input></div>
			</div>
			
</div>
</body>
</html>