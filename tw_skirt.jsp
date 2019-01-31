<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>

<html>
<head>
<title> </title>
</head>
<body>
<div align=center>
<h1>회원님들의 상품 기대평</h1>
<HR>
<form action="pro_skirt.jsp" method="POST">
	
	<%if (session.getAttribute("ID") !=null){ %>@<%=session.getAttribute("ID") %> <input type="text" name="msg_skirt">  <input type="submit" value="의견 남기기">
	<%}else {%> <br>작성을 원하시면 로그인을 해주세요. <%} %>
</form><br><hr>
<div align="left">
<UL>
<%
	
	ArrayList<String>msgs = (ArrayList<String>)application.getAttribute("msgs_skirt");
	
	
	if(msgs != null) {
		for(String msg : msgs) {
			out.println("<LI>"+msg+"</LI>");
		}
	}
%>
</UL>
</div>
</div>
</body>
</html>