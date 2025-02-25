<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Bier</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
	<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
  Bier ist ab 16! Bei Lieferung wird dein Personalausweis �berpr�ft! <br>
  <a href = "https://www.kenn-dein-limit.info/" >&#10233; Kenn dein Limit &#10232;</a>
</div>
<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />
<jsp:useBean id="message" class="jits.beans.MessageBean"
		scope="session"></jsp:useBean>
<a href="../jsp/WarenkorbView.jsp"><%=message.getWarenkorbMessage()%></a>
<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>


<!-- CONTENT -->
<form action ="..\jsp\BierAppl.jsp" method="post">
	<main class="main">
		<br> <br>
		<h2>Bier</h2><br><br>	<br><br>
		<div class= line>
			<div><img class="myLine" src="../IMG/Becks-ausgeschnitten-300x406.jpg" height="300px" width="auto">
			<div class="myLine2">
				<a>Beck�s Pils 0,33L</a>
			<div class="produkt-marke">Bier</div>
					<div class="produkt-preis">1,70 Euro</div>
					 <input Type ="submit" name="becks" value="in den Warenkorb">
				</div>
				</div>
					
			<div><img class="myLine" src="../IMG/Corona-Extra-300x400.jpg" height="300x" width="auto">
			<div class="myLine2">
					<a>Corona Extra 0,33L</a>
			<div class="produkt-marke">Bier</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <input Type ="submit" name="corona" value="in den Warenkorb">
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Ureich2-300x449.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Ureich Premium Pils 0,33L</a>
			<div class="produkt-marke">Bier</div>
					<div class="produkt-preis">1,70 Euro</div>
					<input Type ="submit" name="ureich" value="in den Warenkorb">
				</div>
				</div>
				</div>	<br><br>	<br><br>	<br><br>
			<h2>Weitere Produkte</h2> 
				<br><br>
			<div class=line>
			<div><img class="myLine" src="../IMG/Jack-Daniels-Old-No.-7-Tennessee-Whiskey.jpg" height="300px" width="auto"> 
			<div class="myLine2">
				<h4><a href="AlkoholView.jsp">Alkohol</a></h4>
			</div>
			</div>
			
			<div><img class="myLine" src="../IMG/chips ungarisch.jpg" height="300px" width="auto">
			<div class="myLine2">
				<h4><a href="SnacksView.jsp">Snacks</a></h4>
			</div>
			</div>
			
			<div><img class="myLine" src="../IMG/CocaCola.jpg" height="300px" width="auto">
			<div class="myLine2">
				<h4><a href="SoftdrinksView.jsp">Softdrinks</a></h4>
			</div>
			</div>
		</div>
	</main>
</form>
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>