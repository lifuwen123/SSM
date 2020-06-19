<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="common.jsp" %>
</head>
<body>
	<h1 align="center">修改密码界面</h1>
	<p align="center" style="color: red;font-size: 20px">${err}</p>
<form action="chpassword" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">请输入原密码</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="原密码" name="old">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">请输入新密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="新密码" name="new1">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">确认新密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="新密码" name="new2">
  </div>
  <button type="submit" class="btn btn-default" style="display: block; margin: 0 auto;">提交</button>
 
</form>
</body>
</html>