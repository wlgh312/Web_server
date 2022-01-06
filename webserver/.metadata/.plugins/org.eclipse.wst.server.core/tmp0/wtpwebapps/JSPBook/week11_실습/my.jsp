<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();
Boolean access_ok=false;
if(cookies!=null && cookies.length>0){
for(int i=0; i<cookies.length; i++){
if(cookies[i].getName().equals("member_ok")){
access_ok=true;
}
}
}
if(access_ok){
out.println("관리자의 페이지에 오신걸 환영합니다.<br>");
out.println("<a href=logout.jsp>로그아웃합니다.</a>");
}
else{
out.println("로그인해주세요.");
}%>
</body>
</html>