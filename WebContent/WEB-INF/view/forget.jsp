<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="common.jsp" %>
<script type="text/javascript">
	$(function() {
		$("#birthday").datepicker({dateFormat:'yy-mm-dd'});
	});
</script>
</head>

<body>
<div align="center">
<img alt="" src="${pageContext.request.contextPath}/img/forget.jpg" style="margin: 0 auto;"><br>
</div>

<form action="repassword" method="post">
<h1 align="center">找回密码页面</h1>
	<p align="center" style="font-size: 20px;color: red">${no}</p>
  <div class="form-group">
    <label for="exampleInputEmail1" style="color: blue;">请输入你要找回密码的用户名</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入用户名" name="username">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" style="color: blue;">请输入你注册时的手机号</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入手机号" name="phone" maxlength="11">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1" style="color: blue;">请选择你的出入年月日</label>
    <input type="text" class="form-control" id="birthday" placeholder="请输入生日" name="birthday">
  </div>
  <div style="text-align: center;">
  <button type="submit" class="btn btn-default">确定找回</button>
  </div>
</form>

</body>
</html>