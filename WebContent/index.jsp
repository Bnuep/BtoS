<%@ page contentType="text/html; charset=gb2312" language="java" import="java.io.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Untitled Document</title>
<link type="text/css" href="css/pptPlayer.css" rel="stylesheet"/>
<script type="text/javascript">
function change(ad){
	var sp = document.getElementById("ds");
	sp.src = ad ;
	/*$("#ds").src=ad;*/
}
$("#img").hover(function(){
	alter("dfa");
},function(){
	
});
function pageChange(i){
	var path = "<%=request.getContextPath()%>";
	var str = "/content/";
	var title = "<%=session.getAttribute("title")%>/";
	var url = path+str+title+i+".html";
	document.getElementById("prev").setAttribute("href",url);
}
</script>
</head>

<body>
<div style="">
<%int i = 1; %>
<iframe id="ds"width=100%  height=500px src="<%=request.getContextPath() + "/content/" + session.getAttribute("username") + "/" + session.getAttribute("istitle") + "/" + i +".html" %>" frameborder=0></iframe></div>
<div style="">
	<a id="prev" onclick="<%i=i-1; %>" href="javascript:change('<%=request.getContextPath() + "/content/" + session.getAttribute("username") + "/" + session.getAttribute("istitle")  + "/" + i +".html" %>')"></a>
    <a id="next" onclick="<%i=i+1; %>" href="javascript:change('<%=request.getContextPath() + "/content/" + session.getAttribute("username") + "/" + session.getAttribute("istitle")  + "/" + i +".html" %>')"></a>
</div>
</body>
</html> 