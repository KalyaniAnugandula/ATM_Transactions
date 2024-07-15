<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightyellow">
<center>

<form action="NewAccountCode.jsp" method="post">
<div class="new">
<h3>OPEN ACCOUNT FORM</h3><P></P>
ACCOUNT NO:<input type="text" name="accno"/>
<br><br>
USER NAME :<input type="text" name="uname"/>
<br><br>
PASSWORD :<input type="password" name="psw"/>
<br><br>
RE-ENTER 
PASSWORD :<input type="password" name="cpsw"/>
<br><br>
AMOUNT :<input type="text" name="amt"/>
<br><br>
ADDRESS:<input type="text" name="adr"/>
<br><br>
PHONE :<input type="text" name="pno"/>
<br><br>
<input type="submit" value="Submit"/>&emsp;&emsp;
<input type="submit" value="CLEAR"/>
</div>
</form>
</center>
</body>
</html>