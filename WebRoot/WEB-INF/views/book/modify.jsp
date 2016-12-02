<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modify.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  			
  <body>
   			<form method="post">
   				<input type="hidden" value="${book.id}" name="id"/>
  				书名：<textarea  rows="1" cols="20" name="title" >${book.title}</textarea><br />
  				简介：<textarea  rows="1" cols="20" name="brief" >${book.brief}</textarea><br />
  				作者：<textarea  rows="1" cols="20" name="author" >${book.author}</textarea>	<br />			
  				<input type="submit" value="保存"/>  		 			
  			</form>
  </body>
</html>
