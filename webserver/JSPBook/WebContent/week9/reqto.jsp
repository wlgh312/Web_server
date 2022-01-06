<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
String nid = request.getParameter("id");
String npw = request.getParameter("pw");

out.println("전송된 아이디 : "+nid + "<br>");
out.println("전송된 패스워드 : "+npw + "<br>");
%>