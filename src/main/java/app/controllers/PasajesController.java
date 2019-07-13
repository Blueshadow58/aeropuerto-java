/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controllers;

import app.models.Pasaje;
import app.models.Pasajero;
import app.models.Vuelo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.javalite.activeweb.AppController;

/**
 *
 * @author 20317713-5
 */
public class PasajesController extends AppController {
    
    public void index(){
        
        view("pasajes", Pasaje.findAll().toMaps());
        
        System.out.println(Pasaje.findAll().toMaps());
    
    }
    
    
    public void show(){
        //this is to protect from URL hacking
        Pasaje p = (Pasaje) Pasaje.findById(getId());
        if(p != null){
            view("pasaje", p);
        }else{
            view("message", "are you trying to hack the URL?");
            render("/system/404");
        }
    }
    

}
