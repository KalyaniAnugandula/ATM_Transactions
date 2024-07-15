<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
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
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
			PreparedStatement ps=conn.prepareStatement("select * from bank  where accno=? ");
			ps.setDouble(1,accno);
          ResultSet rs=ps.executeQuery();
          ResultSetMetaData rsmd=rs.getMetaData();
          int n=rsmd.getColumnCount();
          out.println("<style>");
          out.println("table{border-collapse:collapse}");
          out.println("</style>");
          out.println("<table border=1>");
          for(int i=1;i<=n;++i)
          {
          	out.println("<th><font color=brown size=2>"+"<br>"+rsmd.getColumnName(i));
          	
          }
          out.println("<tr>");
          while(rs.next())
          {
           for(int j=1;j<=n;++j)
            
          	out.println("<td><br>"+rs.getString(j));
          		
          		 }
          out.println("</table>");
          	 
out.println("<a href=WelcomePage.jsp>Back</a>");
}
		catch(Exception e)
		{
			out.println(e);
		}
		
		

%>
</body>
</html>