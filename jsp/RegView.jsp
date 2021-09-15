<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
		
<jsp:useBean id="rb" class="jits.beans.RegisterBean"
		scope="session"></jsp:useBean>
		
<jsp:useBean id="r" class="jits.beans.Register"
		scope="session"></jsp:useBean>	
		
<jsp:useBean id="m" class="jits.beans.Member"
		scope="session"></jsp:useBean>
		
<!-- HEADER -->

<jsp:getProperty property="headerAsHtml" name="sb" />

<!-- CONTENT -->
<form action ="Register" method="post">
<table>
	<tr><td>User Name: </td><td><input Type ="text" name="uname"></td></tr>
	<tr><td>Password: </td><td><input Type ="password" name="password"></td></tr>
	<tr><td>Email: </td><td><input Type ="text" name="email"></td></tr>
	<tr><td>Handynummer: </td><td><input Type ="text" name="handynummer"></td></tr>
	<tr><td></td><td><input Type ="submit" value="register"></td></tr>





</table>
</form>
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>