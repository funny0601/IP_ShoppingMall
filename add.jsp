<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, java.net.URLDecoder" %>
<!DOCTYPE html>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch05 : add.jsp</title>
</HEAD>
<body>
	<%

	if (session.getAttribute("ID")==null) {
		%>
	<script> 
		alert("로그인하시면 담으실 수 있습니다.");
		history.go(-1);</script><%
	}
	else{
	request.setCharacterEncoding("UTF-8");
	String productname =URLDecoder.decode(request.getParameter("product"), "UTF-8") ;

	ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
	if(list == null) {
		list = new ArrayList<String>();
		session.setAttribute("productlist",list);
	}
	list.add(productname);
	%>
	<script>
		alert("<%=productname %> 이(가) 추가 되었습니다.!!");
		history.go(-1);
	</script>
	<%
		}
	%>

</body>
</html>