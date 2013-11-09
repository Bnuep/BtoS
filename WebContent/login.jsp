<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎界面</title>
<link href="css/login/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="bground">
		<img src="images/login/bground.jpg" width="100%" height="100%" />
		<div class="d2">
			<div class="d3">
				<img id="title" src="css/login/images/title.png" />
				<s:form action="loginAct">
					<input type="text" id="username" name="username" />
					<input type="password" id="password" name="password" />
					<input type="submit" id="login" method="post" value="" />
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>
