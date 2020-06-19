<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志管理</title>
<%@include file="common.jsp"%>
<script type="text/javascript">
	function deleLog(id) {
		var flag=confirm("你确定要删除吗")
		if(flag==true){
			location.href="deleteLog?id="+id
		}else {
			return;
		};
		
	}
</script>
</head>


<body>
<h1 align="center">后台用户登录日志管理</h1>
<p align="center">${null}</p>
<table border="1" align="center">

<table class="table table-bordered">
  <thead>
    <tr>
    	<th>访问用户</th>
      <th>访问时间</th>
      <th>访问ip</th>
      <th>主机名称</th>
      <th>访问时长(单位:s)</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${visitlog}" var="log">
    <tr>
    <td>${log.username}</td>
      <td><fmt:formatDate value="${log.sttime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
      <td>${log.ip}</td>
      <td>${log.computerName}</td>
      <td>${log.time}  s</td>
      <td><a href="#" onclick="deleLog(${log.id})">删除</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
	
</table>
<div align="center">
<button type="button" class="btn btn-primary" 
    data-toggle="button" style="display: block float left; margin: 0 auto;" onclick="location.href='main'">返回主菜单
</button>
</div>
</body>
</html>