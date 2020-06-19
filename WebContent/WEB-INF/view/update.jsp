<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="common.jsp"%>

<script type="text/javascript">
	$(function() {
		$("#birthday").datepicker({dateFormat:'yy-mm-dd'});
	});
</script>
</head>
<body>
<h1 align="center">用户修改信息界面</h1>
<p align="center" style="color: red">${repet}</p>
<form class="form-horizontal" action="update" method="post">
  <div class="form-group">
    <label class="col-sm-2 control-label">用户编号</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="inputPassword" name="id" readonly="readonly" value="${user.id}">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" value="${user.username}" name="username">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">用户生日</label>
    <div class="col-sm-10">
    	
      <input type="text" class="form-control" value="<fmt:formatDate value="${user.birthday }" pattern="yyyy-MM-dd"/>" name="birthday" id="birthday">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">用户性别</label>
    <div class="col-sm-10">
      <input type="radio" name="sex" value="男" ${user.sex=="男" ? "checked='checked'":''}>   男
      <input type="radio" name="sex" value="女" ${user.sex=="女" ? "checked='checked'":''}>   女
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">用户地址</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" value="${user.address}" name="address">
    </div>
  </div>
  <div align="center">
  <button type="submit" class="btn btn-primary btn-lg" style="display: block float left;margin: 0 auto;">提交</button>
   <button type="button" class="btn btn-primary btn-lg" style="display: block float left;margin: 0 auto;" onclick="location.href='findAll'">返回</button>
   </div>
</form>
</body>
</html>