<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
이 페이지는 5초마다 새로고침 됩니다.<p>
<%=java.util.Calendar.getInstance().getTime() %>
<%response.setIntHeader("Refresh",5);%>
</body>
</html>