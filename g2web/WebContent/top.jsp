<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base target="main">    
  </head>
  
  <body style="text-align: center;">
  	<img src="jquery/logo.png"><br/>
  	
    <a href="<c:url value='/add.jsp'/>">添加商品</a> 　||　
    <a href="<c:url value='findAll.do'/>">查询商品</a>
  </body>
</html>
