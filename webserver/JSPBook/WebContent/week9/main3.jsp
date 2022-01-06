<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
out.println("첫번째 화면입니다."+"<br><hr>");
%>
<jsp:include page="paramto.jsp" flush="true">
<jsp:param name="ko" value="한국"/>
<jsp:param name="am" value="미국"/>
</jsp:include>
<%
out.println("<hr> 마지막 화면입니다."+"<br>");
%>