<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head></head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>修改密码</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/messages_zh.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>

	<script>
	//表格校验
	$(function(){
		//为表单赋予校验规则
		$("#f1").validate({
			rules:{
				password:{
					required:true,
					rangelength:[6,12]
				},
				repassword:{
					required:true,
					equalTo:"input[name='password']"
				}
			}
			
		});
	});
	
	</script>
<style>
  body{
   margin-top:20px;
   margin:0 auto;
 }
 .carousel-inner .item img{
	 width:100%;
	 height:300px;
 }
 .container .row div{ 
	 /* position:relative;
	 float:left; */
 }
 
font {
    color: #3164af;
    font-size: 18px;
    font-weight: normal;
    padding: 0 10px;
}
 </style>
</head>
<body>
<!--
            	描述：菜单栏
            	
            -->
			<!--
            	描述：导航条
            -->
            <!-- 
            	因为菜单栏和导航条在任何页面都有使用，
            	
            	所以为了方便统一维护，增强代码的扩展性
            	
            	我们将其抽取成为一个单独的JSP页面--header.jsp
            	
            	然后静态导入进来即可
             -->
<div class="container" style="width:100%;background:url('${pageContext.request.contextPath}/image/regist_bg.jpg');">
<div class="row"> 

	<div class="col-md-2"></div>

	<div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
		<font>设置新密码</font>
		
		<form id="f1" class="form-horizontal" action="${pageContext.request.contextPath}/user" method="post">
		  <input type="hidden" name="methodName" value="updatePwd"/>
		  <input type="hidden" name="username" value="${user.username}"/>
		 <div class="form-group">
		    <label for="username" class="col-sm-2 control-label"></label>
		    <div class="col-sm-4">
			     <h4>亲爱的${user.username}请设置新的密码</h4>
		    </div>
		  </div>
		 <div class="form-group">
		    <label for="password" class="col-sm-2 control-label">新密码</label>
		    <div class="col-sm-4">
			     <input type="password" class="form-control" id="username" name="password"  placeholder="请输入新密码">
		    </div>
		  </div>
		 <div class="form-group">
		    <label for="repassword" class="col-sm-2 control-label">确认密码</label>
		    <div class="col-sm-4">
			     <input type="password" class="form-control" id="username" name="repassword"  placeholder="确认密码">
		    </div>
		  </div>
		   
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		    <input type="submit"  width="100" value="提交" border="0"
		    style="background: url('${pageContext.request.contextPath}/images/login.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
		    height:35px;width:100px;color:white;">
		    </div>
		  </div>
			<div class="col-md-12">
				<font size="2">找回密码流程：填写用户名---验证身份---设置新密码---完成</font>
			</div>
		</form>
	</div>
  
</div>
</div>

	  
	
	<div style="margin-top:50px;">
			<img src="${pageContext.request.contextPath}/image/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
		</div>

		<div style="text-align: center;margin-top: 5px;">
			<ul class="list-inline">
				<li><a>关于我们</a></li>
				<li><a>联系我们</a></li>
				<li><a>招贤纳士</a></li>
				<li><a>法律声明</a></li>
				<li><a>友情链接</a></li>
				<li><a target="_blank">支付方式</a></li>
				<li><a target="_blank">配送方式</a></li>
				<li><a>服务声明</a></li>
				<li><a>广告声明</a></li>
			</ul>
		</div>
		<div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
			Copyright &copy; 2005-2016 黑马商城 版权所有
		</div>

</body>
</html>




