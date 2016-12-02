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
    
    <title>My JSP 'book.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" href = "resources/css/bootstrap.min.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->

  </head>
  
  <body>
  <h1>欢迎：${userName}</h1>
  <a href="book/add">添加</a>
  
  
  <table>
  	<thead>
  		<tr><th>书名</th><th>简介</th><th>作者</th><th>操作</th></tr>
  		<tbody>
  		<c:forEach var="book" items="${books}">
  		<tr>
  			<td><a href="book/${book.id}">${book.title}</a></td>
  			<td>${book.brief}</td>
  			<td>${book.author}</td>
  			<td><a href="book/delete?id=${book.id} ">删除</a>&nbsp;|&nbsp;<a href="book/modify?id=${book.id}">修改</a></td>
  		</tr> 		
  		</c:forEach>
  		</tbody>
  	</thead>
  
  
  </table>
  
    
  </body>
</html>
