/*
Copyright 2009-2010 Igor Polevoy 

Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License. 
You may obtain a copy of the License at 

http://www.apache.org/licenses/LICENSE-2.0 

Unless required by applicable law or agreed to in writing, software 
distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
See the License for the specific language governing permissions and 
limitations under the License. 
*/

package app.controllers;

import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.DELETE;
import org.javalite.activeweb.annotations.POST;
import app.models.Pasajero;
import org.javalite.activejdbc.Base;
import org.javalite.activejdbc.DB;
import org.junit.Before;


public class PasajerosController extends AppController {                

    
    
    public void index(){
        
        
        
        if("xml".equals(format())){
            render().noLayout().contentType("text/xml");
        }

        if("json".equals(format())){
            render().noLayout().contentType("application/json");
        }

        
        
        
        view("pasajeros", Pasajero.findAll().toMaps());
        
       
        
    }

    public void show(){

        
        
        //this is to protect from URL hacking
        Pasajero p = (Pasajero) Pasajero.findById(getId());
        if(p != null){
            view("pasajero", p);
            
        }else{
            view("message", "are you trying to hack the URL?");
            render("/system/404");
        }
     
    }
    
    @POST
    public void create(){
     
        
        
        Pasajero pasajero = new Pasajero();
        pasajero.fromMap(params1st());
        if(!pasajero.save()){
            flash("message", "Something went wrong, please  fill out all fields");
            flash("errors", pasajero.errors());
            flash("params", params1st());
            redirect(PasajerosController.class, "new_form");
        }else{
            flash("message", "New pasajero was added: " + pasajero.get("nombre"));
            redirect(PasajerosController.class);
        }
     
    }

    @DELETE
    public void delete(){

     
        
        
        Pasajero p = (Pasajero)Pasajero.findById(getId());
        String nombre = p.getString("nombre");
        p.delete();
        flash("message", "Pasajero: '" + nombre + "' was deleted");
        redirect(PasajerosController.class);
    }

    public void newForm(){}
}
