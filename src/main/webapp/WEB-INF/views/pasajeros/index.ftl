<@content for="nombre">Pasajeros List</@content>


<div class="message"><@flash name="message"/></div>



<@link_to action="new_form">Add new pasajero</@link_to>



<table>
    <tr>
        <td>Nombre</td> <!-- Title por nombre -->
        <td>Apellido</td> <!-- autor por apellido -->
        <td>Nacionalidad</td> <!-- edit por numero de telefono -->
       
    </tr>


<#list pasajeros as pasajero>
    <tr>
        <td>
            <@link_to action="show" id=pasajero.id>${pasajero.nombre}</@link_to>
        </td>


        <td>
            ${pasajero.apellido}
        </td>
        
       


        <td>
            ${pasajero.nacionalidad}
        </td>

      
     
        
        <td>
            <@form  id=pasajero.id action="delete" method="delete" html_id=pasajero.id > 
                <button type="submit">delete</button>
            </@form>
        </td>


    </tr>
</#list>
</table>




