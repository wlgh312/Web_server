<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 : session.jsp</title>
</head>
<body>
<%@ page import="java.util.Enumeration, java.util.Date"%>
<h1>세션 예제</h1>
<hr><h2>세션 주요 정보 조회</h2>
세션 ID(유일한 식별자) : <%= session.getId() %><br>
세션 MxInactiveInterval(기본 세션 유지 시간) : <%=session.getMaxInactiveInterval() %><br>
<%long mseconds = session.getCreationTime();
Date time = new Date(mseconds);%>
세션 CreationTime(1970년 1월 1일 0시 이후의 지난 밀리세컨드) : <%=mseconds %><br>
세션 CreationTime(시각으로 다시 계산) : <%=time.toLocaleString() %>
</body>
</html>