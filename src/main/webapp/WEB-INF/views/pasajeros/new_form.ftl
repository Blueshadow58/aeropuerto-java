<@content for="nombre">Add new pasajero</@content>

<span class="error_message"><@flash name="message"/></span>
<h2>Adding new pasajero</h2>


<@form action="create" method="post">
    <table style="margin:30px">


        <tr>
            <td>Nombre:</td>
            <td><input type="text" name="nombre" value="${(flasher.params.nombre)!}">  *
                            <span class="error">${(flasher.errors.nombre)!}</span>
            </td>
        </tr>

        <tr>
            <td> Apellido</td>
            <td><input type="text" name="apellido" value="${(flasher.params.apellido)!}">  *
                            <span class="error">${(flasher.errors.apellido)!}</span>
            </td>
        </tr>

     


        <tr>
            <td>Nacionalidad:</td>
            <td><input type="text" name="nacionalidad" value="${(flasher.params.nacionalidad)!}">  *
                <span class="error">${(flasher.errors.nacionalidad)!}</span>
            </td>
        </tr>

       

        <tr>
            <td></td>
            <td><@link_to>Cancel</@link_to> | <input type="submit" value="Add new pasajero"></td>

        </tr>
    </table>
</@form>



