<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
nav{
background:black;
}
nav a{
margin-left:5px;
color:white;
text-decoration:none;
}
header{
background:lightgrey;
text-align:center;
padding:20px;
}
h3{
text-align:center;
}
p{
margin-left:5px;
}
</style>
</head>

<body>
<%!String greeting = "Welcome to Web Shopping Mall";%>
<%!String tagline = "Welcome to Web Market!";%>
<nav class="">
<a class="" href="./환영.jsp"> Home </a>
</nav>
<header>
<h1><%=  greeting %></h1>
</header>
<h3><%=  tagline %></h3>
<footer class="">
<p>&copy; WebMarket</p>
</footer>

</body>
</html>
