<%-- 
    Document   : admin_login
    Created on : 16 May 2025, 7:20:58 PM
    Author     : Jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login - De Elegance</title>
        <link rel="stylesheet" href="admin.css"/>
    </head>
    <body>
        <div class="login-container">
            <h2>Admin Login</h2>
            
            <form action="AdminLoginServlet.do" method="POST">
                <input type="text" name="username" placeholder="Username" required="">
                <input type="password" name="password" placeholder="Passwords" required="">
                <button type="submit">Login</button>
            </form>
            
            <%
                if(request.getParameter("error")!=null){
            %>
            <p style="color: red;">
                Invalid login details
            </p>
            <%
                }
            %>
            
        </div>
            <br>
            <a href="index.html">Home</a>
    </body>
</html>
