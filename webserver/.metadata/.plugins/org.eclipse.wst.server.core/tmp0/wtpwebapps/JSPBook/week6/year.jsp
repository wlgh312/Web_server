<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 expression.jsp</title>
</head>
<body>
<% int year=365; %>
<% out.println("1년은 약 몇 주 일까요? <p>");%>
<%= year/7 %>
<%="주 입니다." %>
</body>
</html>
