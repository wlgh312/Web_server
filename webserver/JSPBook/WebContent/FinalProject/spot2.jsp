<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Festival Travel</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Big+Shoulders+Stencil+Display&family=Caveat:wght@700&family=Nunito:ital,wght@1,700&family=Varela+Round&display=swap');
body{
background:powderblue;
padding:0px 40px;
}
#logo{
margin:10px 0px 10px 0px;
}
h1{
display:inline-block;
color:#303974;
text-shadow:3px 3px 4px #60a3bc;
font-size:55px;
font-family: 'Caveat', cursive;
line-height:35px;
}
#topmenu{
width:470px;
height:40px;
margin-top:70px;
float:right;
}
#topmenu ul li{
list-style:none;
color:white;
float:left;
text-align:center;
height:40px;
vertical-align:center;
line-height:40px;
margin-right:10px;
}
#topmenu .menu{
text-decoration:none;
color:white;
display:block;
width:120px;
font-weight:bold;
font-size:25px;
}
#topmenu .menu:hover{
text-decoration:underline;
}
#imgDiv{
display:inline-block;
}
#mainDiv{
display:inline-block;
width:520px;
height:500px;
overflow:auto;
background:white;
border:3px solid midnightblue;
border-radius:10px;
padding:20px;
float:right;
}
details{
display:inline-block;
width:220px;
margin:10px;
}
#tw{
width:100px;
font-size:10px;
margin:3px;
}
.btn{
text-align:center;
padding:10px 20px;
background:#3c4873;
border:1px solid #3c4982;
color:white;
border-radius:5px;
float:right;
margin-left:20px;
box-shadow:5px 5px 5px #3c6382;
}
#btnDiv{
width:100%;
margin:50px 0;
float:right;
}
article{
display:bloak;
}
#date{
position:fixed;
float:left;
bottom:5px;
color:grey;
font-size:13px;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="rt" class="Javabean.RootBean" scope="session"/>
<jsp:setProperty property="*" name="rt"/>
<%@include file="dbconn.jsp" %>
<%
String map = request.getParameter("map");
%>
<header>
<img src="logo.png" id="logo" width=80>
<h1>Festival<br>Travel</h1>
<nav id="topmenu">
<ul>
<li><a class="menu" href="festival1.jsp">FESTIVAL</a></li>
<li>|</li>
<li><a class="menu" href="spot1.jsp" style="color:midnightblue;text-decoration:underline;">SPOT</a></li>
<li>|</li>
<li><a class="menu" href="root.jsp">ROOT</a></li>
</ul>
</nav>
</header>
<article>
<div id="imgDiv">
<img src='<%=map %>.png' width=500px>
</div>
<div id="mainDiv">
<form method=post action=root.jsp>
<%
ResultSet rs = null;
Statement stmt = null;
String pre = "hi";
String chk="";
try{
	String sql = "select * from spot order by area2";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	if(rt.getSpot()[0]!=null){
		for(int i=0; i<rt.getSpot().length; i++)
			chk+=rt.getSpot()[i].split(",")[0]+",";
	}
	while(rs.next()){
		String area1 = rs.getString("area1");
		String area2 = rs.getString("area2");
		String name = rs.getString("name");
		String address = rs.getString("address");
		String contents = rs.getString("contents");
		String tel = rs.getString("tel");
		String latitude = rs.getString("latitude");//세로, 클수록 북쪽
		String longitude = rs.getString("longitude");//가로, 클수록 동쪽
		String web="nosite";
		if(area1.equals(map)){
			if(!pre.equals(area2)){
				if(!pre.equals("hi")){
					%></details>
<%				}%>
				<details><summary><%= area2%></summary>
<%			}
			if(chk.contains(name)){%>
				<input type="checkbox" name="spot" value="<%=name %>,<%=latitude %>,<%=longitude%>,<%=web %>,<%=contents %>" checked><%=name %><br>
				<p id="tw">tel : <%=tel %><br>address : <%=address %></p><br>
<%			}
			else{%>
				<input type="checkbox" name="spot" value="<%=name %>,<%=latitude %>,<%=longitude%>,<%=web %>,<%=contents %>"><%=name %><br>
				<p id="tw">tel : <%=tel %><br>address : <%=address %></p><br>
<%			}
		}
		pre=area2;
	}
}catch(SQLException ex){
	out.println("festival 테이블 호출이 실패했습니다.<br>");
	out.println("SQLException: " + ex.getMessage());
}finally{
	if(rs!=null)
		rs.close();
	if(stmt!=null)
		stmt.close();
	if(conn!=null)
		conn.close();
}
%>
</div></article>
<div id="btnDiv">
<input class="btn" type="submit" value="Make Root!">
<input class="btn" type="submit" value="축제 선택하러 가기 " onclick="javascript:form.action='festival1.jsp';">
</div>
</form>
<p id="date">관광지 데이터 업데이트 날짜 : 2021-06-07</p>
</body>
</html>