/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.utils;

import java.io.BufferedReader;
//import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
//import java.util.logging.Level;
//import java.util.logging.Logger;
import model.Booking;

/**
 *
 * @author Jacob
 */
public class BookingUtils {
    public static List<Booking> readBooking(String filePath){
        List<Booking> bookings = new ArrayList<>();
        
        try(BufferedReader reader = new BufferedReader(new FileReader(filePath));) {
            String line;
            while((line=reader.readLine())!=null){
                String[] parts = line.split("\\|");
                if(parts.length==4){
                    Booking booking =new Booking(parts[0],parts[1],parts[2],parts[3]);
                    bookings.add(booking);
                }
            }
            
        }catch (IOException e) {
            e.printStackTrace();
        }
        
        
         
        return bookings;
    }
}
