<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:include page="actionto2.jsp" flush="true">
<jsp:param name="set" value="나관리"/>
<jsp:param name="time" value="<%=new java.util.Date()%>"/>
</jsp:include>
<%
out.println("성명 : "+request.getParameter("name")+"<p>");
out.println("학번 : "+request.getParameter("num")+"<p>");
out.println("성별 : "+request.getParameter("sex")+"<p>");
out.println("성별 : "+request.getParameter("country")+"<p>");
out.println("----------------------------------<br>");
out.println("수고하셨습니다.");
%>
