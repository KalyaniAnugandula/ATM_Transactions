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
double damt=Double.parseDouble(request.getParameter("damt"));
double amount=0.0;
try {	
		Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

			amount=amount+damt;
			PreparedStatement ps=conn.prepareStatement("update bank set amount=amount+? where accno=? ");
			ps.setDouble(1, damt);

			ps.setInt(2,accno);
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
			
conn.close();
}
		catch(Exception e)
		{
			out.println(e);
		}
		
		
%>
</body>
</html>