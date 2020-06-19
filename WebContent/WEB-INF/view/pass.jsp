<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证通过</title>
<%@ include file="common.jsp" %>
<style type="text/css">
span{
	font-size: 20px;
	color: red;
}
</style>
</head>
<body>

<h1 align="center" style="color: green;">验证通过</h1>
<p>你的密码已经发送至你的邮箱，请你登录你的邮箱进行查看,如果你想起来你的密码，点击下方链接返回登录</p>
<a href="login">点击返回登录页面</a><br>
<img alt="" src="${pageContext.request.contextPath}/img/pass.png" style="margin: 0 auto;"><br>
</body>
</html>