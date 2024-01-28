<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<%
        // Retrieve the session object
        HttpSession currentSessoin = request.getSession(false);
        	if(currentSessoin != null){
        		currentSessoin.invalidate();
        	}
            // Redirect to the login page if the session is not valid
            response.sendRedirect("index.html");
        
    %>
</body>
</html>