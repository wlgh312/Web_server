<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 page</title>
</head>
<body>
<%@ page info="내장 객체 page : page 자기 자신의 객체" %>
<%= this.getServletInfo() %><p>
<%= ((org.apache.jasper.runtime.HttpJspBase) (page)).getServletInfo() %>
</body>
</html>
