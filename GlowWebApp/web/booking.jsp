<%-- 
    Document   : booking
    Created on : 16 May 2025, 9:19:05 PM
    Author     : Jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book an Appointment</title>
        <link rel="stylesheet" href="styles.css" >
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar">
            <div class="nav-container">
                <a href="index.html" class="logo">Glow & Grace</a>
                
                <div class="menu-icon" onclick="toggleMenu()">&#9776;</div>
                
                <ul class="nav-links" id="navLinks">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
        </nav>
        
        <header class="page-header">
            <h1>
                Book Appointment | De Elegance
            </h1>
        </header>
        <div class="booking-form">
            <h2>Enter the details</h2>
            <br>
            <form method="POST" action="BookNowServlet.do">
                <input type="text" name="name" placeholder="Your Name" required="">
                <select name="service" required>
                    <option value="">Select your Service</option>
                    <option value="Braids">Braids</option>
                    <option value="Haircut">Haircut</option>
                    <option value="Makeup">Makeup</option>
                    <option value="Nails">Nails</option>
                </select>
                <input type="date" name="date" required="">
                <input type="time" name="time" required="">
                <button type="submit">Book Now</button>
            </form>
            
            <%
                if("true".equals(request.getParameter("success"))){
            %>
            <p style="color: green">
                Booking successful
            </p>
            <%}%>
        </div>
        
        <footer>
            Visit us in Pretoria CBD | Call: 081 234 5678 | Instagram: @abce
        </footer>
        
        <script>
            function toggleMenu(){
                const navLinks = document.getElementById("navLinks");
                navLinks.classList.toggle("active");
            }
        </script>
        
    </body>
</html>
