<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证通过</title>
</head>
<body>
<h1 align="center" style="color: red">异常页面</h1>
<p align="center"><strong><span style="color: red">${err}</span></strong></p>
<hr>

<span style="color: blue;">小提示:</span><br>
<p style="color: green;">出现异常的原因可能是你访问的路径未按照正常的请求路径访问,<br>也可能是你操作不当造成的原因,你可以点击下方链接返回登录界面重新登录。</p>
<a href="login">点击我返回去登录</a>
</body>
</html>