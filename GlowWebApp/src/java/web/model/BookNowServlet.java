/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web.model;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jacob
 */
public class BookNowServlet extends HttpServlet {
 
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String service = request.getParameter("service");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        
        String filePath = getServletContext().getRealPath("/WEB-INF/bookings.txt");
        
        //BufferedWriter writer = new BufferedWriter(new FileWriter(filePath,true));
        //writer.write(name+ "|"+ service + "|" + date + "|" + time);
        //writer.newLine();
        try(BufferedWriter writer = new BufferedWriter(new FileWriter(filePath,true));){
            writer.write(name+ "|"+ service + "|" + date + "|" + time);
            writer.newLine();
        }
        catch(IOException e){
            e.printStackTrace();
        }
        
        response.sendRedirect("booking.jsp?success=true");
        
    }

     

}
