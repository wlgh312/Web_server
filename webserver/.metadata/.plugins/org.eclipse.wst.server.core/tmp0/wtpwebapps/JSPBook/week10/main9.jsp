<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Enumeration" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session</title>
</head>
<body>
<p><h4>----- 세션을 삭제하기 전 -----</h4>
<%String name;
String value;
Enumeration en = session.getAttributeNames();
int i = 0;
while(en.hasMoreElements()){
i++;
name = en.nextElement().toString();
value = session.getAttribute(name).toString();
out.println("설정된 세션 이름 [ "+i+" ] : "+name + "<br>");
out.println("설정된 세션 값 [ "+i+" ] : "+value + "<br>");
}
session.removeAttribute("userPW");%>
<p><h4>----- 세션을 삭제한 후 -----</h4>
<%en = session.getAttributeNames();
i=0;
while(en.hasMoreElements()){
i++;
name = en.nextElement().toString();
value = session.getAttribute(name).toString();
out.println("설정된 세션 이름 [ "+i+" ] : "+name + "<br>");
out.println("설정된 세션 값 [ "+i+" ] : "+value + "<br>");
}
%>
</body>
</html>