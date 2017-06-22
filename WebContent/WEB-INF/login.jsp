<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include  file="common/taglib.jsp"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script src="static/js/jQuery.js"></script>
<link rel="stylesheet" type="text/css" href="${basePath}/static/css/head.css">
<link rel="stylesheet" type="text/css" href="static/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="static/css/demo.css" />
<link rel="stylesheet" type="text/css" href="static/css/login.css"/> 
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="static/css/component.css" />


<script src="static/js/html5.js"></script>

   <style>
   
 .cont .logo {
	text-align: center;
	line-height: 90px; 
	color: #fff;
	font-size:30px;
	position: relative;
    top: 26px;
} 

   </style>
   
</head>
<body>
<!-- 头部页面 -->
<%@include file="common/header.jsp" %>
<!--show展示特效 -->
   <div class ="container demo-1">
        <div class="content">
            <div id ="large-header" class="large-header">
            <!--登录框 -->
        <div class='cont'>
		    <div class='logo'>用户登录</div>
		       <div class='inputBox mt50 ml32'>
			      <input type="text" id="username" autofocus="autofocus" autocomplete="off" maxlength="60" placeholder="请输入账号/邮箱/手机号">
		       </div>
		   <div class='inputBox mt50 ml32'>
			  <input type="password" id="password" autofocus="autofocus" autocomplete="off" maxlength="60" placeholder="请输入密码">
		   </div>
		 <div class='mt50 ml32'>
			<button class="login_btn" onclick="login()">登陆</button>
		</div>
	</div>
  <canvas id="demo-canvas"></canvas>              

              <!-- <h1 class="main-title">Connect <span class="thin">Three</span></h1>  -->
            </div>
        </div>
   </div>
   
  
	
    <script src="static/js/TweenLite.min.js"></script>
    <script src="static/js/EasePack.min.js"></script>
    <script src="static/js/rAF.js"></script>
    <script src="static/js/demo-1.js"></script>
<!-- 底部页面 -->
<%@include file="common/footer.jsp" %>
<script>
       function login(){
    	 var username = $('#username').val();
    	 var password = $('#password').val();
    	 
    	 $.ajax({
    		 type:"pos",//请求方式
    		 url:"${basePath}/controller/loginController.jsp",
    		 data:{"username":username,"password":password},
    		 error:function(){
    			 alert("登陆出错！");
    		 },
    		 success:function(data){
    			 if(data == -1){
    				 alert('用户名和密码不能为空！');
    			 }else if(data == -2){
    				 alert('用户不存在！');
    			 }else if(data == -3){
    				 alert('用户名或者密码错误');
    			 }else{
    				 window.location.href="${basePath}"
    			 }
    		 }
    		 
    	 });
       }
</script> 
</body>
</html>