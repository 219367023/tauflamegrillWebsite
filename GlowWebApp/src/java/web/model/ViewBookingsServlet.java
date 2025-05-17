/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Booking;
import model.utils.BookingUtils;

/**
 *
 * @author Jacob
 */
@WebServlet("/view_bookings")
public class ViewBookingsServlet extends HttpServlet {
 
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        if(session == null||session.getAttribute("admin")==null){
            response.sendRedirect("admin_login.jsp");
            return;
        }
        
        
        String filePath = getServletContext().getRealPath("/WEB-INF/bookings.txt");
        List<Booking> bookings =BookingUtils.readBooking(filePath);
        
        request.setAttribute("bookings",bookings);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_bookings.jsp");
        disp.forward(request, response);
        
    }

     

}
