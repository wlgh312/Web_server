<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
out.println("1)관리자 : "+request.getParameter("set")+"<br>");
out.println("2)접속시간 : "+request.getParameter("time")+"<br>");
out.println("----------------------------------<br>");
%>