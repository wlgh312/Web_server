<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Big+Shoulders+Stencil+Display&family=Caveat:wght@700&family=Nunito:ital,wght@1,700&family=Varela+Round&display=swap');
.name {
  position: relative;
  display:inline-block;
}

.name .contents {
  visibility: hidden;
  width: 130px;
  background-color: #555;
  color: #fff;
  border-radius: 6px;
  padding: 5px;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -60px;
  opacity: 0;
  transition: opacity 0.3s;
}

.name .contents::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

.name:hover .contents {
  visibility: visible;
  opacity: 1;
}
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
article{
display:inline-block;
background:white;
width:45%;
height:450px;
border:4px solid midnightblue;
border-radius:5px;
padding:20px;
}
#date{
position:fixed;
float:left;
bottom:5px;
color:grey;
font-size:13px;
}
section{
display:inline-block;
width:45%;
height:500px;
float:right;
}
iframe{
width:100%;
height:100%;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="rt" class="Javabean.RootBean" scope="session"/>
<jsp:setProperty property="*" name="rt"/>
<header>
<img src="logo.png" id="logo" width=80>
<h1>Festival<br>Travel</h1>
<nav id="topmenu">
<ul>
<li><a class="menu" href="festival1.jsp">FESTIVAL</a></li>
<li>|</li>
<li><a class="menu" href="spot1.jsp">SPOT</a></li>
<li>|</li>
<li><a class="menu" href="root.jsp"  style="color:midnightblue;text-decoration:underline;">ROOT</a></li>
</ul>
</nav>
</header>
<article>
<%
int fesNum=0;
int spotNum=0;
String w="";
if(rt.getFestival()[0]!=null)
	fesNum=rt.getFestival().length;
if(rt.getSpot()[0]!=null)
	spotNum=rt.getSpot().length;
int num=fesNum+spotNum;
String[] str=new String[num];
double[] lat=new double[num];//가장 북쪽=기준
double[] lon=new double[num];
String[] a=new String[3];
int cnt=0;
int fes=0;
if(fesNum!=0){
	for(String s:rt.getFestival()){
		str[cnt]=s;
		cnt++;
	}
}
fes=cnt;
if(spotNum!=0){
	for(String s:rt.getSpot()){
		str[cnt]=s;
		cnt++;
	}
}
for(int i=0; i<str.length; i++){
	a=str[i].split(",");
	lat[i]=Double.parseDouble(a[1]);
	lon[i]=Double.parseDouble(a[2]);
}%>
<%--위경도 이용 거리 구하기 --%>
<%int distIndex=0;
double[] kilo=new double[num];
java.util.Map<Double, Integer> map = new java.util.HashMap<>();
for(int i=1; i<num; i++){
	if(lat[i-1]<lat[i]){
		distIndex=i;//가장 북쪽에 위치한 장소의 이름의 배열 인덱스값
	}
}
for(int i=0; i<num; i++){
	kilo[i]=distance(lat[distIndex], lon[distIndex], lat[i], lon[i]);
	map.put(kilo[i], i);
}
List<Double> key = new ArrayList<>(map.keySet());
Collections.sort(key);
int c=0;
for(Double n:key){
	if(c!=0)
		out.println("<br>&emsp;&emsp;&emsp;&emsp;⇣"+"<br>");
	if(map.get(n)<fes){%>
		<img src="festival.png" width=20px>
<%	}else{%>
		<img src="spot.png" width=20px>
<%  }
	w=str[map.get(n)].split(",")[3];
	if(w.equals("nosite"))
		w="nosite.html";
%>	<a href="<%=w%>" target="iframeweb">	
<div class="name"><%out.println(str[map.get(n)].split(",")[0]+"<br>");%><span class="contents"><%= str[map.get(n)].split(",")[4]%></span></div>
</a><%
	c++;
}
%>
<%!
public double distance(double lat1, double lon1, double lat2, double lon2){
	double theta = lon1-lon2;
	double dist = Math.sin(lat1*Math.PI/180.0)*Math.sin(lat2*Math.PI/180.0)+Math.cos(lat1*Math.PI/180.0)*Math.cos(lat2*Math.PI/180.0)*Math.cos(theta*Math.PI/180.0);
	dist = Math.acos(dist);
	dist = dist*180/Math.PI;
	dist = dist*60*1.1515;
	dist=dist*1.609344;
	return dist;
} 
%>
</article>
<section>
<iframe src="" name="iframeweb">장소를 클릭해주세요.</iframe>
</section>
<p id="date">축제 데이터 업데이트 날짜 : 2021-05-12 / 관광지 데이터 업데이트 날짜 : 2021-06-07</p>
</body>
</html>