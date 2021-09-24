<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel="stylesheet" type="text/css" href="../css/Warenkorb.css">
<title>Insert title here</title>
</head>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>

		
<body>
<form action="./WarenkorbAppl.jsp" method="get">
		
<!-- HEADER -->

<jsp:getProperty property="headerAsHtml" name="sb" />

<!-- CONTENT -->

<h2>Dein Warenkorb</h2>
	<table border="1">

		<tr>
			<th>Anzahl </th>
			<th>Produkt</th>
			<th>Preis</th>
			<th>Gesamt</th>
		</tr>
		<tr>
		</tr>
		<tr>
            <td> </td>
			<td> </td>
			<td>Summe Warenkorb:</td>
			<td>  EUR </td>
		</tr>

	</table>

	<br>
	<input type="submit" name="jetztkaufen"
		value="Jetzt Kaufen">
	<input type="submit" name="weitereinkaufen"
		value="Weiter Einkaufen">
	
	<input type="submit" name="zurueckzp"
		value="Zur Startseite">
		
		<input type="submit" name="warenkorb"
		value="Warenkorb Loeschen" >

<!-- FOOTER -->

		<jsp:getProperty property="startFooterAsHtml" name="sb" />
		
</form>
</body>
</html>
