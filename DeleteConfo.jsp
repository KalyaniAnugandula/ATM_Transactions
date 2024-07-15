<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
let ans=window.confirm("Are You Sure Want to Delete(y/n)?");
if(ans){
	window.location.replace("DeleteCode.jsp");
}
else{
	window.location.replace("WelcomePage.jsp")
}
</script>
</body>
</html>