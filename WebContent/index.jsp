<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@include  file="common/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script src="${basePath}/static/js/jQuery.js"></script>
<link rel="stylesheet" type="text/css" href="static/css/head.css">
<link rel="stylesheet" type="text/css" href="static/css/pic.css">
<style>

</style>
</head>
<body>
   <!-- 头部页面 -->
<%@include file="common/header.jsp" %>
   <div class = "banner">
      <div class = "content">
         <ul>
         <li class="fl">
                <a href="javascript:void(0)">
                    <img src="static/img/10.jpg"/>
                </a>
            </li>
            <li class ="fl">
                <a href="javascript:void(0)">
                    <img src="static/img/6.png"/>
                </a>
            </li>
            <li class="fl">
                <a href="javascript:void(0)">
                    <img src="static/img/7.png"/>
                </a>
            </li>
            <li class="fl">
                <a href="javascript:void(0)">
                    <img src="static/img/8.jpg"/>
                </a>
            </li>
            <li class = "fl">
                <a href="javascript:void(0)">
                    <img src="static/img/9.jpg"/>
                </a>
            </li>
            <li class="fl">
                <a href="javascript:void(0)">
                    <img src="static/img/10.jpg"/>
                </a>
            </li>
            <li class ="fl">
                <a href="javascript:void(0)">
                    <img src="static/img/6.png"/>
                </a>
            </li>
         
        </ul>
        <span class='banner_left'><i class='btn_left'></i></span>
        <span class='banner_right'><i class='btn_right'></i></span>
      </div>
   </div>
<!-- 底部页面 -->
<%@include file="common/footer.jsp" %>
 <script>
   var leftBtn = $('.btn_left').eq(0);
   var rightBtn = $('.btn_right').eq(0); 
   
   var ul = $('.banner .content ul').eq(0);
   
   var index = 0;
   var timer = null;
 
   var imgwidth = $('.banner .content ul li').width();
   var len = $('.banner .content ul li').length - 2;
   /* timer = setInterval(function(){
	   index++;
	   if(index>len.length-1){
		   index=0;
	   }
	   movePicture();
   },4000); */
   
   rightBtn.on('click',function(){
	   clearTimeout(timer);
	   timer = setTimeout(function(){
		   index ++;
		   movePicture();
	   },500);
   });
   
   leftBtn.on('click',function(){
	   clearTimeout(timer);
	   timer = setTimeout(function(){
		   index --;
		   movePicture();
	   },500);
   });
   
   function movePicture(){
	   $('.banner .content ul').animate({'margin-left':-imgwidth * (index+1)},1000,function(){
		   if(index == len){
			   $(this).css('margin-left',-imgwidth);
			   index = 0;
		   }
		   if(index == -1){
			   $(this).css('margin-left',-imgwidth * len);
			   index = len -1;
		   }
	   });
   }
   </script> 
   
</body>
</html>