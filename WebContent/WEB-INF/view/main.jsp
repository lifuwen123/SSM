<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="common.jsp" %>
<script type="text/javascript">
	function loginout() {
		var flag=confirm("你确定要退出吗");
		if(flag==true){
			location.href='loginout';
		}
		else {
			return;
		};
	}
</script>
</head>
<body>
<div>
	
	
	
	<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">模糊查询系统</a>
    </div>
    
    
    
    <div style="float: right;">
        <form class="navbar-form navbar-left" role="search">
            <button type="button" class="btn btn-default" onclick="location.href='findAll'">进入后台</button>
            <button type="button" class="btn btn-default" onclick="location.href='to_chpassword'">修改密码</button>
            <button type="button" class="btn btn-default" onclick="loginout()">退出登录</button>
        </form>
    </div>
    
    
    <div class="navbar-header" style="float: right;">
        <a class="navbar-brand" href="#">${sessionScope.Sessionuser.username}</a>
    </div>
    
    <div class="navbar-header" style="float: right;">
        <a class="navbar-brand" href="#" >当前登录的用户名为:</a>
    </div>
    
    
    
    <div>
        <form class="navbar-form navbar-left" role="search" action="findName">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="请输入用户名" name="name">
            </div>
            <button type="submit" class="btn btn-default">点击查询</button>
        </form>
    </div>
    
    
    </div>
    
    
</nav>
</div>
	
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="img/a.jpg" alt="First slide" width="100%">
        </div>
        <div class="item">
            <img src="img/b.jpg" alt="Second slide" width="100%">
        </div>
        <div class="item">
            <img src="img/c.jpg" alt="Third slide" width="100%">
        </div>
        <div class="item">
            <img src="img/d.jpg" alt="Third slide" width="100%">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
       data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
    <a class="carousel-control right" href="#myCarousel" 
       data-slide="next">&rsaquo;</a>
</div>



<h6 align="left">商品列表</h6>
<div class="row">
<c:forEach items="${pro.lists}" var="pro">
  <div class="col-xs-6 col-md-3">
    <a href="img?filename=${pro.imgname}" class="thumbnail">
      <img src="${pageContext.request.contextPath}/${pro.img}"title="${pro.name}">
    </a>
  </div>
  </c:forEach>
  
</div>


<nav aria-label="Page navigation">

  <ul class="pagination pagination-lg" style="padding-left: 40%">
    <li>
    <c:if test="${pro.currPage!=1}">
      <a href="main?currPage=${pro.currPage-1}" aria-label="Previous">
        <span aria-hidden="true">上一页</span>
      </a>
      </c:if>
    </li>
    <c:forEach begin="1" end="${pro.totalPage}" var="page">
    <li><a href="main?currPage=${page}">${page}</a></li>
    </c:forEach>
    <li>
    <c:if test="${pro.currPage<pro.totalPage}">
      <a href="main?currPage=${pro.currPage+1}" aria-label="Next">
        <span aria-hidden="true">下一页</span>
      </a>
     </c:if>
    </li>
  </ul>
</nav>

<hr style=" border-color: blue; size: 10px ">

<%@include file="bottom.jsp" %>
</body>
</html>