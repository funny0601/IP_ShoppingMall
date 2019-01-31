

<%-- 20171040 최세영 --%>

 <%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
 <head>
 <title>login.jsp</title>
 </head>
 <body>
          <%
                  String dbid = "admin";
                  String dbpw = "1234";

                  String forwardPage = null;


                  if (request.getParameter("id").equals(dbid) && request.getParameter("pw").equals(dbpw)) {

                          session.setAttribute("ID", request.getParameter("id"));
                          session.setAttribute("PW", request.getParameter("pw"));

                          forwardPage = "signed_main.jsp";
                  } else
                          forwardPage = "main.jsp";
          %>
         <jsp:forward page="<%=forwardPage%>" />
 </body>
 </html>