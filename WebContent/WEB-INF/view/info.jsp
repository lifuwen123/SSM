<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志信息</title>
<script type="text/javascript">
	function dele(id) {
		var flag=confirm("你确定要删除id为"+id+"用户吗");
		if(flag==true){
			location.href="delete?id="+id
		}
		else {
			return;
		};
	}
</script>
<%@include file="common.jsp" %>

</head>
<body>
<h1 align="center">用户查询列表</h1>
<p align="center" style="color: red">${emp}</p>
<table class="table table-bordered">
  <thead>
    <tr>
      <th>用户名</th>
      <th>用户生日</th>
      <th>用户性别</th>
      <th>用户地址</th>
      <th>修改信息</th>
      <th>删除用户</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${comuser}" var="user">
    <tr>
      <td>${user.username}</td>
      <td> <fmt:formatDate value="${user.birthday }" pattern="yyyy-MM-dd"/></td>
      <td>${user.sex}</td>
      <td>${user.address}</td>
      <td><a href="to_update?id=${user.id}">编辑</a></td>
      <td><a href="#" onclick="dele(${user.id})">删除</a></td>
    </tr>
 </c:forEach>
  </tbody>
</table>
</table>
<button type="button" class="btn btn-primary" 
   style="display: block; margin: 0 auto;" onclick="location.href='main'">返回主菜单
</button>
	
</body>
</html>