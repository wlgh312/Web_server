<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String name = request.getParameter("id");
String password = request.getParameter("pass");
%>
<% if(!password.equals("1234")){
	out.println("["+name+"]님은 관리자가 아닙니다.");
   }
   else{
	   out.println("이름 : "+name+"<br>");
	   out.println("클라이언트 IP : "+request.getRemoteAddr()+"<br>");
	   out.println("요청 정보 길이 : "+request.getContentLength()+"<br>");
	   out.println("요청 정보 전송방식 : "+request.getMethod()+"<br>");
	   out.println("요청 URI : "+request.getRequestURI()+"<br>");
	   out.println("서버 이름 : "+request.getServerName()+"<br>");
	   out.println("서버 포트 : "+request.getServerPort()+"<br>");
   }
%>
</body>
</html>