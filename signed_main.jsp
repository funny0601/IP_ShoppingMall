<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>★빛나리 OUTLOOK ONLINE STORE★</title>
<style>
body {
	font-family: '돋움', 'Dotum';
}

header {
	padding: 50px;
	margin-top: 10px;
	margin-bottom: 40px;
	color: #3DFF92;
	font-size: 70px;
	text-align: center;
	font-family: '돋움', 'Dotum';
}

aside#left {
	width: 100px;
	padding: 20px;
	padding-right: 20px;
	padding-bottom: 10px;
	margin-left: 30px;
	margin-right: 30px;
	float: left;
	border: 5px solid;
	border-color: #3DFF92;
	list-style-type: none;
}

aside#right {
	width: 200px;
	padding: 20px;
	padding-right: 0px;
	margin-left: 30px;
	margin-right: 30px;
	float: right;
	border: 5px solid;
	border-color: #3DFF92
}

div#title {
	font-size: 50px;
}

section#main{
	margin-left: 300px;
	margin-right: 300px;
	margin-top: 100px;
	margin-bottom: 200px;
	text-align:center;
}
</style>
</head>
<body>
	<header>
		<div id="title">당신을 빛나게 할</div>
		★빛나리 OUTLOOK ONLINE STORE★
	</header>
	<nav></nav>

	<aside id="right">
		<%
		if (session.getAttribute("ID")==null) {
	%><jsp:forward page="main.jsp" />
	<%
		} else {
	%> 
	<br>
		<%= session.getAttribute("ID") %>님
		<br><br>
		<form name="form 3" method="POST" action="buylist.jsp">
						<button type="submit" name="buylist">장바구니 목록</button>
					</form>
		<br><br>
	<form name="form 1" method="POST" action="logout.jsp">
	
	<input type="submit" value="로그아웃">
         </form><%
		}
	%>
		<br>
	</aside>
<section id="main">
	<jsp:include page="beforechoose.jsp" />
</section>
</body>
</html>