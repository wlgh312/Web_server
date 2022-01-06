<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 pagecontext.jsp</title>
</head>
<body>
<h2>pageContext 예제</h2>
<% pageContext.getOut().println("include.html을 추가"); %>
<hr>
<% pageContext.include("include.html"); %>
</body>
</html>
