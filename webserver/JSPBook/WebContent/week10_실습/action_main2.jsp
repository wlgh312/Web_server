<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>학생 정보 입력</h1>
<form name="action" method=post action="action_inc2.jsp">
성명 : <input type="text" name="name"><p>
학번 : <input type="text" name="num"><p>
성별 : 남자<input type="radio" value="남자" name="sex">
여자<input type="radio" value="여자" name="sex"><p>
국적 : <select name="country">
<option value="대한민국" selected>대한민국
<option value="미국">미국
<option value="캐나다">캐나다
</select><p>
<input type="submit" value="보내기">
</form>
</body>
</html>