<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제:grade.jsp</title>
</head>
<body>
<h2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</h2>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="score" class="Javabean.GradeBean" scope="page"/>
<hr>
<h3>폼에서 전달받은 이름과 성적을 JavaBeans GradeBean에 저장</h3><p>
이름 : <%= request.getParameter("name") %>,
성적 : <%= request.getParameter("point") %><p>
<jsp:setProperty property="name" name="score" param="name"/>
<jsp:setProperty property="point" name="score" param="point"/>
<hr>
<h3>JavaBeans GradeBean에 저장된 정보를 조회 출력</h3><p>
이름 : <jsp:getProperty name="score" property="name"/><br>
성적 : <jsp:getProperty name="score" property="point"/><br>
등급 : <jsp:getProperty name="score" property="grade"/><br>
</body>
</html>