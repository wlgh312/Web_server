<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
String nko=request.getParameter("ko");
String nam=request.getParameter("am");
out.println("문서의 처리 결과입니다.<br>");

out.println("전송된 ko는 "+nko+"입니다.<br>");
out.println("전송된 am는 "+nam+"입니다.<br>");
%>