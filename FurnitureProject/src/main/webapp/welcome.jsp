<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome</title>
	<link rel="stylesheet" type="text/css" href="Oldstyle.css">
</head>
<body>
	<%
		// Retrieve the session object
		HttpSession session1 = request.getSession(false);
		
		// Check if the session is not null and the username attribute is set
		if (session1 != null && session1.getAttribute("username") != null) {
			// Get the username from the session
			String username = (String) session.getAttribute("username");
	%>

	<div class="container">
		<h1>Welcome, <%=username%>!</h1>
		<h1> Enjoy Furniture Rentals!!</h1>
		you can <a href="logout.jsp">LOGOUT</a> securely.
	</div>

	<%

	} else {
		// Redirect to the login page if the session is not valid 
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>