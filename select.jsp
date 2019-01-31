<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String productname = request.getParameter("product");
	
	if(productname.equals("장치마")){%>
		<jsp:include page="gopum.jsp" />
		<%}

	else if(productname.equals("귀걸이")){%>
	<jsp:include page="ear.jsp" />
	<%}
	else if(productname.equals("맨투맨")){%>
	<jsp:include page="man.jsp" />
	<%}
	else if(productname.equals("파자마")){%>
	<jsp:include page="rabbit.jsp" />
	<%}
	else if(productname.equals("단치마")){%>
	<jsp:include page="skirt.jsp" />
	<%}
	else{%>
	<jsp:include page="aa.jsp" />
	<%} %>
	
	
	
	
</body>
</html>