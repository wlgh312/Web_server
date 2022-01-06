<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
div{
text-align:center;
position:relative;
width:500px;
margin:auto;
}
#map1{
width:515px;
margin-top:30px;
z-index:-3;
}
#map2{
width:139px;
position:absolute;
top:55px;
left:75px;
opacity:0;
}
#map2:hover{
opacity:1;
}
#map3{
width:50px;
position:absolute;
top:118px;
left:113px;
z-index:1;
opacity:0;
}
#map3:hover{
opacity:1;
}
#map4{
width:205px;
position:absolute;
top:42px;
left:154px;
opacity:0;
}
#map4:hover{
opacity:1;
}
#map5{
width:137px;
position:absolute;
top:192px;
left:64px;
opacity:0;
}
#map5:hover{
opacity:1;
}
#map6{
width:120px;
position:absolute;
top:170px;
left:163px;
opacity:0;
}
#map6:hover{
opacity:1;
}
#map7{
width:163px;
position:absolute;
top:185px;
left:216px;
opacity:0;
}
#map7:hover{
opacity:1;
}
#map8{
width:139px;
position:absolute;
top:292px;
left:84px;
opacity:0;
}
#map8:hover{
opacity:1;
}
#map9{
width:158px;
position:absolute;
top:369px;
left:55px;
opacity:0;
}
#map9:hover{
opacity:1;
}
#map10{
width:179px;
position:absolute;
top:319px;
left:189px;
opacity:0;
}
#map10:hover{
opacity:1;
}
#map11{
width:58px;
position:absolute;
top:195px;
left:430px;
opacity:0;
}
#map11:hover{
opacity:1;
}
#map12{
width:82px;
position:absolute;
top:530px;
left:56px;
opacity:0;
}
#map12:hover{
opacity:1;
}
#map13{
width:26px;
position:absolute;
top:230px;
left:149px;
opacity:0;
}
#map13:hover{
opacity:1;
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
<header>
<img src="logo.png" id="logo" width=80>
<h1>Festival<br>Travel</h1>
<nav id="topmenu">
<ul>
<li><a class="menu" href="festival1.jsp" style="color:midnightblue;text-decoration:underline;">FESTIVAL</a></li>
<li>|</li>
<li><a class="menu" href="spot1.jsp">SPOT</a></li>
<li>|</li>
<li><a class="menu" href="root.jsp">ROOT</a></li>
</ul>
</nav>
</header>
<div>
<img src="map1.png" id="map1">
<a href="festival2.jsp?map=경기도"><img src="map2.png" id="map2"></a>
<a href="festival2.jsp?map=서울특별시"><img src="map3.png" id="map3"></a>
<a href="festival2.jsp?map=강원도"><img src="map4.png" id="map4"></a>
<a href="festival2.jsp?map=충청남도"><img src="map5.png" id="map5"></a>
<a href="festival2.jsp?map=충청북도"><img src="map6.png" id="map6"></a>
<a href="festival2.jsp?map=경상북도"><img src="map7.png" id="map7"></a>
<a href="festival2.jsp?map=전라북도"><img src="map8.png" id="map8"></a>
<a href="festival2.jsp?map=전라남도"><img src="map9.png" id="map9"></a>
<a href="festival2.jsp?map=경상남도"><img src="map10.png" id="map10"></a>
<a href="festival2.jsp?map=울릉도"><img src="map11.png" id="map11"></a>
<a href="festival2.jsp?map=제주특별자치도"><img src="map12.png" id="map12"></a>
<a href="festival2.jsp?map=세종특별자치시"><img src="map13.png" id="map13"></a>
</div>
<p id="date">축제 데이터 업데이트 날짜 : 2021-05-12</p>
</body>
</html>