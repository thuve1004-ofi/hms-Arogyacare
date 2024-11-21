<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Out</title>
</head>
<body>
    <%
        // Check if a session exists before invalidating
        if (session != null && !session.isNew()) {
            session.invalidate();  // Invalidate the session if it's not new
        }
        // Redirect to login page after session is invalidated
        response.sendRedirect("NurseLoginTHUVE.jsp");
    %>
</body>
</html>
