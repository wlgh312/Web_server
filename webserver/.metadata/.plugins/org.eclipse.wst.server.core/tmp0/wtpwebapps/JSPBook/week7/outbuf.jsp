<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 out.jsp</title>
</head>
<body>
<%out.println("이 부분은 출력되지 않습니다.");
out.clear();%>
<h2>현재 페이지의 출력 버퍼 상태</h2><p>
초기 출력 버퍼 크기 : <%= out.getBufferSize() %>byte<p>
남은 출력 버퍼 크기 : <%= out.getRemaining() %>byte<p>
autoFlush : <%=out.isAutoFlush() %><p>
</body>
</html>
