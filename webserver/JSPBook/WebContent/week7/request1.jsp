<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 request.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<% String name = request.getParameter("name");
String studentNum = request.getParameter("studentNum");
String sex = request.getParameter("sex");
String country = request.getParameter("country");
if(sex.equalsIgnoreCase("man")){
sex="남자";
}else{
sex="여자";
}
%>
<h2> 학생 정보 입력</h2>
성명 : <%=name %><p>
학번 : <%=studentNum %><p>
성별 : <%=sex %><p>
국적 : <%=country %><p>
</body>
</html>