<%-- 
    Document   : view_bookings
    Created on : 16 May 2025, 9:03:12 PM
    Author     : Jacob
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Booking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false" %>
<%
    HttpSession session = request.getSession(false);
    if(session==null || session.getAttribute("admin") == null){
        response.sendRedirect("admin_login.jsp");
        return;
    }
    List<Booking> bookings = (List<Booking>)request.getAttribute("bookings");
    if(bookings == null){
        bookings = new ArrayList<>();
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bookings - Admin</title>
        <link rel="stylesheet" href="admin.css"/>
    </head>
    <body>
        <div class="dashboard-container">
            <h2>All Bookings</h2>
            <%=bookings%>
            <table border="1" cellpadding="10">
                <tr>
                    <th>Name</th>
                    <th>Service</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
                <%
                    if(bookings !=null && !bookings.isEmpty()){
                        for(Booking b : bookings){
                    
                    
                %>
                <tr>
                    <td><%=b.getName()%></td>
                    <td><%=b.getService()%></td>
                    <td><%=b.getDate()%></td>
                    <td><%=b.getTime()%></td>
                </tr>
                <% 
                    }
                    } else{
                %>
                <tr>
                    <td colspan="4">No Booking found.</td>
                </tr>
                <%%>
                
            </table>
            
            <br>
            <a href="admin_dashboard.jsp">Back to Dashboard</a>
        </div>
            
         
    </body>
</html>
