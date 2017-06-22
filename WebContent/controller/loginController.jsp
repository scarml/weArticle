<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
     //获取客户端传递的参数
     String username = request.getParameter("username");
     String password = request.getParameter("password");
     
     System.out.println(username);
     System.out.println(password);
%>