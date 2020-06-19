<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<%@include file="common.jsp"%>
<style type="text/css">
	span{color: red}
</style>
<script type="text/javascript">
	$(function() {
		$("#birthday").datepicker({dateFormat:'yy-mm-dd'});
		$("#btn").click(function () {
			$.ajax({
				url:"address",
				type:"post",
				contentType:"application/json;charset=UTF-8",
				data:"{}",
				success:function(data){
					var i=0
					$("#input").val(data)
					return
				}
			});
		});
	});
</script>
</head>
<body>
<h1 align="center">添加用户界面</h1>
<p align="center" style="font-size: 20px;color: red">${repet}</p>




<form class="form-horizontal" action="save" method="post">
  <div class="form-group">
 	
    <label for="inputPassword" class="col-sm-2 control-label"> <span>*</span>用户名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  name="username">
    </div>
  </div>
  
  
   <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label"><span>*</span>密码</label>
    <div class="col-sm-10">
      <input type="password" class="form-control"  name="password">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label"><span>*</span>用户生日</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" value="" name="birthday" id="birthday">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label"><span>*</span>用户性别</label>
    <div class="col-sm-10">
      <input type="radio" name="sex" value="男" >   男
      <input type="radio" name="sex" value="女">   女
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label"><span>*</span>用户地址</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="address" id="input">
      <button type="button" id="btn">使用ajax填充默认地址</button>
    </div>
  </div>
  <div class="form-group">
 	
    <label for="inputPassword" class="col-sm-2 control-label" style="color: red;line-height: 10px" > <span>*</span>请输入密保</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  name="phone" placeholder="请输入你的手机号方便找回密码,最长为11位" maxlength="11">
    </div>
  </div>
  <button type="submit" class="btn btn-primary btn-lg" style="display: block;margin: 0 auto;">添加</button>
</form>


















</body>
</html>