<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String accno=request.getParameter("accno");
String name=request.getParameter("uname");
String password=request.getParameter("psw");
String cpassword=request.getParameter("cpsw");
String address=request.getParameter("adr");
String amount=request.getParameter("amt");
String mobileno=request.getParameter("pno");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
	PreparedStatement ps=conn.prepareStatement("insert into bank values(?,?,?,?,?,?)");
	cpassword=password;
	ps.setString(1,accno);
	ps.setString(2,name);
	ps.setString(3,password);
	ps.setString(4,amount);
	ps.setString(5,address);
	ps.setString(6,mobileno);

	if((name=="")||(password=="")||(cpassword=="")||(amount=="")||(address=="")||(mobileno==""))
	{
	%>
	<script language=JavaScript>
	
 window.alert('Fields must not be empty!')
	
	 </script>
	 
	
<%
	}
	else if(password==cpassword)
{
	int i=ps.executeUpdate();
	if(i==1)
	{
		out.println("record Updated..");
		out.println("<a href=WelcomePage.jsp>Back</a>");
	}
	else
	{
		out.println("Record Not Updated..");
	}
}
else
{
	out.println("Password didnt matched..");
}
	
	conn.close();
	}
catch(Exception e)
{
	out.println(e);
}
%>

</body>
</html>