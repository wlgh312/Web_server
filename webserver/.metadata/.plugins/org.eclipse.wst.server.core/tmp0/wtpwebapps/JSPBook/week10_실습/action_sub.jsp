<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
out.println("<h1>학생 정보 입력 결과</h1>");
out.println("성명 : "+request.getParameter("name")+"<p>");
out.println("학번 : "+request.getParameter("num")+"<p>");
out.println("성별 : "+request.getParameter("sex")+"<p>");
out.println("성별 : "+request.getParameter("country")+"<p>");
%>