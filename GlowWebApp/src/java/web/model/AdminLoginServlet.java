/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web.model;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jacob
 */
@WebServlet("/AdminServlet")
public class AdminLoginServlet extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if("admin".equals(username)&&"salon123".equals(password)){
            HttpSession session = request.getSession();
            session.setAttribute("admin", true);
            response.sendRedirect("admin_dashboard.jsp");
        }
        else{
            response.sendRedirect("admin_login.jsp?error=true");
        }
    }

     

}
