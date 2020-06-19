<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="common.jsp"%>
<script type="text/javascript">
//上传图片后预览图片
function viewImage(file){
            var preview = document.getElementById('preview');
            if(file.files && file.files[0]){
                //火狐下
                preview.style.display = "block";
                preview.style.width = "300px";
                preview.style.height = "120px";
                preview.src = window.URL.createObjectURL(file.files[0]);
            }else{
                //ie下，使用滤镜
                file.select();
                var imgSrc = document.selection.createRange().text;
                var localImagId = document.getElementById("localImag"); 
                //必须设置初始大小 
                localImagId.style.width = "250px"; 
                localImagId.style.height = "200px"; 
                try{ 
                localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                locem("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc; 
                }catch(e){ 
                alert("您上传的图片格式不正确，请重新选择!"); 
                return false; 
                } 
                preview.style.display = 'none'; 
                document.selection.empty(); 
                } 
                return true; 
        }
</script>
</head>
<body>
<h1 align="center">用户举报反馈界面</h1>
<p align="center">${null}</p>
<form action="" method="post">
<p><strong>请选择下面的一个用户</strong></p>
<select name="username">
  <option disabled="disabled" selected="selected">请选择一个用户</option>
  <c:forEach items="${users}" var="user">
  <option value="${user.username}">${user.username}</option>
 </c:forEach>
</select>
<br>
<br>
<p><strong>请选择下面的一个条理由</strong></p>

<select name="username">
  <option disabled="disabled" selected="selected">请选择一个理由</option>
  <option value="">被打了</option>
  <option value="">工作不认真</option>
  <option value="">工作不仔细</option>
  <option value="">上班抽烟，打架等</option>
  <option value="">借钱不还</option>
  <option value="">到处坑蒙拐骗</option>
</select>
<br>
<br>
<p><strong>其他原因，请说明:</strong></p>
<textarea class="form-control" rows="3" placeholder="请输入你的理由,方便后台审核,最多200个字符"></textarea>
<br>
<strong>请上传你的证据截图,方便我们审核</strong>
<br>
<input type="file" onchange="viewImage(this)" id="caseImage" name="caseImage" >
<br>
<div id="localImag"><img id="preview" width=-1 height=-1 style="diplay:none" /></div>
<br>
<button type="submit" style="color: black;">提交举报</button>
</form>
</body>
</html>