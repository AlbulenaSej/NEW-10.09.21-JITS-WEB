<%@page import="org.postgresql.translation.messages_bg"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="jits.beans.Member"%>
<%@page import="java.sql.SQLException"%>
<%@page import="jits.beans.MessageBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="lb" class="jits.beans.LoginBean" scope="session" />
	<%
	Member member = (Member) session.getAttribute("member");
	if (member == null) {
		member = new Member();
		session.setAttribute("member", member);
	}
	MessageBean message = (MessageBean) session.getAttribute("message");
	if (message == null) {
		message = new MessageBean();
		session.setAttribute("message", message);
	}
	String passwort = request.getParameter("passwort");
	String email = request.getParameter("email");
	String login = request.getParameter("login");
	if (login == null)
		login = "";
	String zurReg = request.getParameter("zurReg");
	if (zurReg == null)
		zurReg = "";
	String delete = request.getParameter("delete");
	if (delete == null)
		delete = "";
	String comeFrom = request.getParameter("comeFrom");
	if(comeFrom == null) comeFrom = "";
	
	
	if (login.equals("Einloggen")) {
		lb.setEmail(email);
		lb.setPasswort(passwort);
		try {
			boolean loginOk = lb.checkEmailPasswort();
			if (loginOk) {
		lb.setLoggedIn(true);
		message.setLoginSuccessful();
		response.sendRedirect("../jsp/HomeView.jsp?comeFrom=LoginAppl");
			} else {
		lb.setLoggedIn(false);
		message.setLoginFailed();
		response.sendRedirect("../jsp/LogInView.jsp");
			}
		} catch (SQLException se) {
			message.setAnyError();
			response.sendRedirect("./LogInView.jsp");
		}
	}
	else if (zurReg.equals("zurReg")) {
		message.setRegistrierungWelcome();
		response.sendRedirect("./RegAppl.jsp?comeFrom=LoginAppl");
	}
	else if(!comeFrom.equals("")){
		response.sendRedirect("./RegView.jsp");
	}
	else if (delete.equals("Loeschen")) {
		lb.setEmail(email);
		lb.setPasswort(passwort);
		boolean passwortOK = lb.checkEmailPasswort();
		if (passwortOK) {
			lb.deleteAccount();
			lb.setLoggedIn(false);
			message.setAccountGeloescht(email);
			response.sendRedirect("../jsp/RegView.jsp");
		}else {
		message.setLoginWelcome();
		response.sendRedirect("./LogInView.jsp");
	}
	
	}
	
	
	%>
</body>
</html>