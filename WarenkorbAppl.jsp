<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WarenkorbAppl</title>
</head>
<body>
	<jsp:useBean id="wb" class="jits.beans.Warenkorb"
		scope="session" />
	<%!
	
	public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}
	
	
	
	
	%>
	<%
		String weitereinkaufen = this.denullify(request.getParameter("weitereinkaufen"));
		String jetztkaufen = this.denullify(request.getParameter("jetztkaufen"));
		String kill = this.denullify(request.getParameter("kill"));
		String zurueckzp = this.denullify(request.getParameter("zurueckzp"));
		String action = this.denullify(request.getParameter("action"));
		String value = this.denullify(request.getParameter("value"));
		String warenkorb = this.denullify(request.getParameter("warenkorb"));
		
		

		if (weitereinkaufen.equals("Weiter Einkaufen")) {

			response.sendRedirect("../Module/LiteraturView.jsp");
		}else if (warenkorb.equals("Warenkorb Loeschen")) {
		    
			kb.deleteWarenkorb();
			//kb.getHTMLFromAusgewaehlteWarenkorbProdukte();
			response.sendRedirect("../jsp/WarenkorbView.jsp");

		}
		
		else if (jetztkaufen.equals("Jetzt Kaufen")) {
			kb.deleteWarenkorb();

			response.sendRedirect("./RechnungsView.jsp");

		} else if (zurueckzp.equals("Zur Startseite")) {

			response.sendRedirect("../jsp/HomeView.jsp");

		} else if (action.equals("kill")) {
			try {
				kb.deleteArtikelVonWarenkorb(value);
			} catch (SQLException se) {

				System.out.println("B DB schreiben fehlgeschlagen, Mist!");
				System.out.println("SQLCode=" + se.getErrorCode());
				System.out.println("Error-Message=" + se.getMessage());

			}
			
			kb.getHTMLFromAusgewaehlteWarenkorbProdukte();

			response.sendRedirect("../jsp/WarenkorbView.jsp");

		} else {

			response.sendRedirect("../jsp/WarenkorbView.jsp");
		}
	%>

</body>
</html>