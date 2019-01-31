<%-- 20171040 최세영 --%>


 <%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
 <head>

 <title>logout.jsp</title>
 </head>
 <body>
         <%
         session.invalidate();
         %>
 <jsp:forward page="main.jsp" />
 </body>
 </html> 