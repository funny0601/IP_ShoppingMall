<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.net.URLEncoder"%>

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
	%><h2>
			Welcome to<br>빛나리 online<br>
		</h2>
		<form name="form 1" method="POST" action="login.jsp">
			아이디:<br> <input type="text" name="id"><br> <br>비밀번호:<br>
			<input type="text" name="pw"><br> <br> <input
				type="submit" value="로그인">
		</form>
		
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
	<h1>맨투맨</h1>
	<br>
	<img src="images/따뜻한 맨투맨.jpg" width="350px" height="350px">
	<br><br><h1>Price: $250</h1>
	
	편하게 입고 다닐 수 있는 옷은 뭐니뭐니해도 맨투맨이죠.<br><br>
	따뜻한 색감까지 더해서 착용하는 여러분의 마음까지 따뜻하게 만들기 위해 노력했습니다.<br><br>
	부드러운 재질로 엄선해서 제작한 만큼 옷의 퀄리티가 뛰어난 것을 장담할 수 있습니다! 
	<% String name=URLEncoder.encode("맨투맨", "UTF-8"); %>
	<br><br><jsp:include page="tw_man.jsp" /><hr>
	<table align="center">
			<tr>
				<td>
					<form name="form 2" method="POST" action="add.jsp">
						<button type="submit" name="product" value=<%=name %>>장바구니에 담기</button>
					</form>
				</td><td>     </td><td>      </td><td>   </td><td>    </td><td></td><td></td>
				<td>
					<form name="form 1" method="POST" action="signed_main.jsp">
						<input type="submit" value="조회 목록으로 돌아가기">
					</form>
				</td>
			</tr>
		</table>
	
</section>
</body>
</html>