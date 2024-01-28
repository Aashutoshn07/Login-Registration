<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="Stylesheet" type="text/css" href="indexStyle.css">

</head>
<body>
	<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>

      
        <h1>Welcome, <%= username %>!</h1>
        <h3>We're delighted to have you on our platform. </h3>
        <h3>Explore, learn, and connect with our vibrant community! </h3>
        <h3>Feel free to stay as long as you like, and when you're ready,</h3> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>