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
int accno=Integer.parseInt(request.getParameter("accno"));
try {
	
Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection 	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
PreparedStatement ps=conn.prepareStatement("delete from bank where accno=?");
ps.setInt(1, accno);
String ch=null;
int i=ps.executeUpdate();
   if(i==1){
    out.println(" <br>Record deleted Sucsessfully!...");
   out.println("<a href=WelcomePage.jsp>Back</a>");
   }
  else{
   out.println(" <br>Record not deleted...");
  }
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>