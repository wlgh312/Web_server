<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String nid=request.getParameter("id");
out.println("전송된 아이디 : "+nid+"<br>");
%>
<jsp:include page="reqto2.jsp" flush="false"/>
<%String nuname = request.getParameter("uname");
out.println("전송된 이름 : " + nuname+"<br>");
%>