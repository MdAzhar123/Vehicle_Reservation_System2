<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
You are Successfully Logged-Out
<form action="log">
	<input type="submit" value="goBack">
</form>
<!-- <a href="VRS2-master/login">go back</a> -->
</body>
</html> --%>







<% session.invalidate(); %>
You are now logged out!!

<a href="login">go back</a>