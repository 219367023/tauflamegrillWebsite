<%-- 
    Document   : logout
    Created on : 16 May 2025, 7:48:37 PM
    Author     : Jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("admin_login.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        
    </body>
</html>
