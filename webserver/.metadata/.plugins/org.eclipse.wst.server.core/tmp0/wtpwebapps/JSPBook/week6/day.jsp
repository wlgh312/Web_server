<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 scriptlet.jsp</title>
</head>
<body>
<% int i=24; %>
<% out.println("하루는 "+i+"시간이며, <br>");
out.println("하루는 "+i*60+"분 입니다."); %>
</body>
</html>