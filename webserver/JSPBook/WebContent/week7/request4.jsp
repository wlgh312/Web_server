<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 postrequest.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<h2>메소드 post 방식에서 한글 처리</h2>
<hr>
한글 성명 : <%= request.getParameter("korname") %><p>
영문 성명 : <%= request.getParameter("engname") %><p>
</body>
</html>
