<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel= "stylsheet" type="text/css" href="../css/pakete.css">
<title>Paket2 | M�nnerabend</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
	
	<!-- HEADER -->
		<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />

	<!-- CONTENT -->
		
		<main class="main">
		<a href="HomeView.jsp"><img class="logo-image" src="../IMG/JITSLOGO.png" alt ="logo"></a><br> <br>
	<main class="main">
			<div class="content">
			<h2>Paket M�nnerabend</h2> <br> <br>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../IMG/Paket2.jpg" alt ="pakete"/>
					<div class="produkt-name">
					<a href="produkt.html">M�nnerabend </a>
					</div>
					<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">61,00 Euro</div>
					</div>
			</ul>
			</div>
		<h4>Beschreibeung</h4><br>
		<p>Inhalt: <br><br>
		2x Jack Daniel�s 0,7L (40% vol.)<br>
		3x Coca Cola 1L<br>
		2x Chipsfrisch - Ungarisch<br>
		1x Haribo - Goldb�ren<br>
		1x Snack Mix - 8 Sorten<br><br><br>
		</p>
		
		<h1>�hnliche Produkte</h1>
		<div class= line>
			<div><a href="Paket1View.jsp"> <img class="myLine" src="../IMG/Paket1.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
					<a href="Paket1View.jsp">M�elsabend</a>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">48,00 Euro</div>
				</div>
				</div>
				
			<div><a href="Paket3View.jsp"><img class="myLine" src="../IMG/Paket3.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="Paket3View.jsp">Netflix &amp Chill</a>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">15,00 Euro</div>
				</div>
				</div>
				
			<div><a href="Paket4View.jsp"><img class="myLine" src="../IMG/Paket4.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="Paket4View.jsp">Partypaket</a>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">96,00 Euro</div>
				</div>
				</div>
				
		</div>
	</main>
		</main>
		
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />

</body>
</html>