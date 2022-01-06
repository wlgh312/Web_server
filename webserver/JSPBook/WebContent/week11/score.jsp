<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 : score.jsp</title>
</head>
<body>
<h2>JavaBeans를 이용한 학생의 이름과 성적의 저장과 조회 예제</h2>
<jsp:useBean id="score" class="Javabean.ScoreBean" scope="page"/>
<hr>
<h3>이름과 성적을 JavaBeans ScoreBean에 저장</h3><p>
이름 : <%="홍길동" %>,
성적 : <%="78" %><p>
<jsp:setProperty name="score" property="name" value="홍길동"/>
<jsp:setProperty name="score" property="point" value="78"/>
<hr>
<h3>JavaBeans ScoreBean에 저장된 정보를 조회 출력</h3><p>
이름 : <jsp:getProperty property="name" name="score"/><br>
성적 : <jsp:getProperty property="point" name="score"/><br>
</body>
</html>