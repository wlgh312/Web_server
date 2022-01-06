<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 declaration.jsp</title>
</head>
<body>
<%! double radius=4.8;%>
<%! public double getArea(double r){
return r*r*3.14;}%>
반지름이 <%=radius %>인 원의 면적은 <%=getArea(radius) %>이다.
</body>
</html>
