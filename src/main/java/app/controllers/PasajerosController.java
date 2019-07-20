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
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.javalite.activejdbc.Base;
import org.javalite.activejdbc.DB;
import org.javalite.activeweb.annotations.RESTful;
import org.junit.Before;

@RESTful
public class PasajerosController extends AppController {  
    private ObjectMapper mapper = new ObjectMapper();
public void index(){
List<Pasajero> pasajeros = Pasajero.findAll();
view("pasajeros", pasajeros);
render().contentType("application/json");
}

    public void create() throws IOException {
        Map datos = mapper.readValue(getRequestString(), Map.class);
        Pasajero p = new Pasajero();       
        p.fromMap(datos);
        p.saveIt();
       
    }
 
    public void update() {
        // code to update an existing product
    }
 
    public void show() {
        // code to find one product
    }
 
    public void destroy() {
        // code to remove an existing product 
    }
    
     @Override
    protected String getContentType() {
        return "application/json";
    }
 
    @Override
    protected String getLayout() {
        return null;
    }
   
}
