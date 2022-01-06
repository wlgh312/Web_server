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
String name=request.getParameter("name");
String num = request.getParameter("num");
String sex = request.getParameter("sex");
String[] country = request.getParameterValues("country");
%>
<h2>학생 정보 입력 결과</h2>
성명 : <%= name%><p>
학번 : <%=num %><p>
성별 : <%=sex %><p>
국적 : <% 
if(country==null){
out.println("국적 입력 안됨");
}
else{
for(int i=0; i<country.length; i++){
out.println(country[i]+"<br>");
}}%>
</body>
</html>