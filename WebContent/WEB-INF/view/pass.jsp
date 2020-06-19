<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<p>恭喜用户<span >${user.username}</span>找回密码,你的密码为<span>${user.password}</span></p>
<a href="login">点击返回登录页面</a><br>
<img alt="" src="${pageContext.request.contextPath}/img/pass.png" style="margin: 0 auto;"><br>
</body>
</html>