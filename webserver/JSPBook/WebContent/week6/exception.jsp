<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 exception.jsp</title>
</head>
<body>
<%@ page isErrorPage="true" %>
<h2>처리 중 문제 발생</h2>
빠른 시일 내에 복수하도록 하겠습니다.<p>
exception.getMessage() : <%= exception.getMessage() %><p>
exception.toString() : <%= exception.toString() %>
</body>
</html>
