<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<%!
String makeItLower(String str){
return str.toLowerCase();
}
%>
<%
     out.println(makeItLower("Hello World")+"<br>");  // 문자열 데이터가 모두 소문자로 출력
     out.println("Hello World".toUpperCase());  // 문자열 데이터가 모두 대문자로 출력
%>
</body>
</html>
