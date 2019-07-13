<@content for="pasajeroID">Pasajes List</@content>

<table>
    <tr> 
        <td>Codigo</td> <!-- autor por apellido -->
    </tr>


<#list pasajes as pasaje>
    <tr>
        <td>
            <@link_to action="show" id=pasaje.id>${pasaje.pasajeroID}</@link_to>
        </td>

    </tr>

<td>
${pasaje.id}
</td>

</#list>
</table>




