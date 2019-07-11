<@content for="codigo">Vuelos List</@content>


<div class="message"><@flash name="message"/></div>



<@link_to action="new_form">Add new vuelo</@link_to>



<table>
    <tr> 
        <td>Codigo</td> <!-- autor por apellido -->
        <td>Fecha</td> <!-- edit por numero de telefono -->
        <td>Hora</td>
        <td>Estado<td>
    </tr>


<#list vuelos as vuelo>
    <tr>
        <td>
            <@link_to action="show" id=vuelo.id>${vuelo.codigo}</@link_to>
        </td>


        <td>
            ${vuelo.fecha}
        </td>
        
        <td>
            ${vuelo.hora}
        </td>


        <td>
            ${vuelo.estado}
        </td>

        
        <td>
            <@form  id=vuelo.id action="delete" method="delete" html_id=vuelo.id > 
                <button type="submit">delete</button>
            </@form>
        </td>


    </tr>
</#list>
</table>




