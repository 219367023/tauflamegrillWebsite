/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Jacob
 */
public class Booking {
    private String name;
    private String service;
    private String date;
    private String time;
    
    //public Booking(String,name,String service,String date,String time){
    //this.name=name;
    //this.service=service;
    //this.date=date;
    //this.time=time;
//}

    public Booking(String name, String service, String date, String time) {
        this.name = name;
        this.service = service;
        this.date = date;
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public String getService() {
        return service;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }
    
    
    
}

