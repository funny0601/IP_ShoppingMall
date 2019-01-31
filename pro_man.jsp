<%-- 20171040 최세영 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList, java.text.*, java.util.*"%>

<%
	
	request.setCharacterEncoding("UTF-8");
	

	String msg = request.getParameter("msg_man");
	
	Object username = session.getAttribute("ID");
	

	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs_man");
	

	if(msgs == null) {
		msgs = new ArrayList<String>();

		application.setAttribute("msgs_man",msgs);
	}
	

	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("yyyy년 M월 d일 a h시 mm분", Locale.KOREA);
	msgs.add(username+" : "+msg+" - "+ f.format(date));
	

	application.log(msg+"추가됨");
	

	response.sendRedirect("man.jsp");
%>