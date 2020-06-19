<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<%@include file="common.jsp" %>
</head>
<body>
<form action="login" method="post">
<h1 align="center">用户登录页面</h1>
	<p align="center" style="font-size: 20px;color: red">${err}</p>
  <div class="form-group">
    <label for="exampleInputEmail1">用户名</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入用户名" name="username">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="请输入密码" name="rcpassword">
  </div>
  
  <div class="checkbox">
    <label>
      <input type="checkbox">记住我&nbsp;&nbsp;
    </label>
    <span><a href="to_forget">忘记密码？</a></span>
  </div>
  <button type="submit" class="btn btn-default">登录</button>
</form>
</body>
</html>