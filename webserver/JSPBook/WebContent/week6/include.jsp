<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 include.jsp</title>
</head>

<body>
<%@ include file="header.jsp" %>
<hr><p>
include 지시자 : &lt;%@ include file="file_name" %&gt;<p>
<hr><p>
<%@ include file="footer.html" %>
</body>
</html>
