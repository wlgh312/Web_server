<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
String myid="kim";
String mypw="1234";
String id=request.getParameter("id");
String pw = request.getParameter("pw");
if(id.equals(myid) && pw.equals(mypw)){
Cookie my = new Cookie("member_ok", id);
response.addCookie(my);
out.println("<b>["+id+"]님 반갑습니다.<br>");
out.println("<a href=my.jsp><b>"+id+"님의 관리 페이지로 이동합니다.</a><br>");
out.println("<a href=logout.jsp>로그아웃합니다.</a></b>");
}
else{
out.println("<script>"+"alert('아이디와 패스워드가 다릅니다.'); history.back(); </script>");
}%>
</body>
</html>