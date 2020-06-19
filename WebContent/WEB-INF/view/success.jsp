<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
<%@include file="common.jsp"%>
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
	/* 实现全选全不全功能 */
	function ChanAll() {
		var all=document.getElementById('all');
		var part=document.getElementsByName('id');
		for(var i=0;i<part.length;i++){
			part[i].checked=all.checked;
		}
	}
		
	/*批量删除 */
	/* function deleteLot() {
		aleret("343");
		var uids=document.getElementsByName('id');
		var ids=[];
		for(var i=0;i<uids.length;i++){
			if(uids[i].checked==true){
				ids.push(uids[i].value);
				//ids+=uids[i].value+",";
			}
			//ids=ids.substring(0,ids.length-1);
		}

	} */
</script>
</head>

<body>

<h1 align="center">后台用户列表</h1>
<p align="center">${null}</p>
<table border="1" align="center">

<table class="table table-bordered">
  <thead>
    <tr>
    <th><input type="checkbox" onclick="ChanAll()" id="all"></th>
      <th>用户名</th>
      <th>用户生日</th>
      <th>用户性别</th>
      <th>用户地址</th>
      <th>用户担任的角色</th>
      <th>修改信息</th>
      <th>删除用户</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${users.list}" var="user">
    <tr>
    	<td><input type="checkbox" name="id" value="${user.id}"></td>
      <td>${user.username}</td>
      <td>
      <fmt:formatDate value="${user.birthday }" pattern="yyyy-MM-dd"/>
      </td>
      <td>${user.sex}</td>
      <td>${user.address}</td>
      <td>${user.role.rolename}</td>
      <td><a href="to_update?id=${user.id}">编辑</a></td>
      <td><a href="#" onclick="dele(${user.id})">删除</a></td>
    </tr>
</c:forEach>
</tbody>
</table>
	
</table>
<nav aria-label="Page navigation">

  <ul class="pagination pagination-lg" style="padding-left: 40%">
    <li>
    <c:if test="${users.pageNum!=1}">
      <a href="findAll?currPage=${users.pageNum-1}" aria-label="Previous">
        <span aria-hidden="true">上一页</span>
      </a>
      </c:if>
    </li>
    <c:forEach begin="1" end="${users.pages}" var="page">
    <li><a href="findAll?currPage=${page}">${page}</a></li>
    </c:forEach>
    <li>
    <c:if test="${users.pageNum<users.pages}">
      <a href="findAll?currPage=${users.pageNum+1}" aria-label="Next">
        <span aria-hidden="true">下一页</span>
      </a>
     </c:if>
    </li>
  </ul>
</nav>
<div align="center">
<button type="button" class="btn btn-primary" 
    data-toggle="button" style="display: block float left; margin: 0 auto;" onclick="location.href='to_save'">添加用户
</button>
<button type="button" class="btn btn-primary" 
    data-toggle="button" style="display: block float left; margin: 0 auto;" id="delete">批量删除
</button>
<button type="button" class="btn btn-primary" 
    data-toggle="button" style="display: block float left; margin: 0 auto;" onclick="location.href='main'">返回主菜单
</button>
<button type="button" class="btn btn-primary" 
    data-toggle="button" style="display: block float left; margin: 0 auto;" onclick="location.href='findAllLog'">查看用户登录记录
</button>
<button type="button" class="btn btn-primary" 
    data-toggle="button" style="display: block float left; margin: 0 auto;" onclick="location.href='findAllLog'">进入反馈系统
</button>
</div>

</body>
</html>