<%-- 
    Document   : admin_dashboard
    Created on : 16 May 2025, 7:39:31 PM
    Author     : Jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     session = request.getSession(false);
     if(session == null || session.getAttribute("admin") == null){
        response.sendRedirect("admin_login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard - De Elegance</title>
        <link rel="stylesheet" href="admin.css"/>
    </head>
    <body>
        
        <div class="dashboard-container">
            <h1>Welcome, Admin</h1>
            <p>Here's your dashboard overview</p>

            <ul>
                <li><a href="view_bookings.jsp">View Bookings</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
        
         
    </body>
</html>
