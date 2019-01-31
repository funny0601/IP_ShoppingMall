<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, java.net.URLDecoder, java.net.URLEncoder"%>

<% 
request.setCharacterEncoding("UTF-8");
ArrayList list = (ArrayList) session.getAttribute("productlist");
String delete=URLDecoder.decode(request.getParameter("delitem"), "UTF-8");

list.remove(request.getParameter("delitem"));
		

						%>
						
 <script>
		alert("<%=delete %> 이(가) 삭제 되었습니다.!!");
	</script>
	<jsp:include page="buylist.jsp" />