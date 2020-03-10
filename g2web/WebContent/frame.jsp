<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>主页</title>
  </head>

<frameset rows="20%,*">
	<frame src="<c:url value='/top.jsp'/>" name="top"/>
	<frame src="<c:url value='/welcome.jsp'/>" name="main"/>
</frameset>
</html>
