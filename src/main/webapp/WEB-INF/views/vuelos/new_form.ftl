<@content for="codigo">Add new vuelo</@content>

<span class="error_message"><@flash name="message"/></span>
<h2>Adding new vuelo</h2>


<@form action="create" method="post">
    <table style="margin:30px">


        <tr>
            <td>Codigo:</td>
            <td><input type="text" name="codigo" value="${(flasher.params.codigo)!}">  *
                            <span class="error">${(flasher.errors.codigo)!}</span>
            </td>
        </tr>


        <tr>
            <td>Fecha</td>
            <td><input type="datetime" name="fecha" value="${(flasher.params.fecha)!}">  *
                            <span class="error">${(flasher.errors.fecha)!}</span>
            </td>
        </tr>



        <tr>
            <td>Hora</td>
            <td><input type="text" name="hora" value="${(flasher.params.hora)!}">  *
                            <span class="error">${(flasher.errors.hora)!}</span>
            </td>
        </tr>

     
        

        <tr>
            <td>Estado:</td>
            <td><input type="text" name="estado" value="${(flasher.params.estado)!}">  *
                <span class="error">${(flasher.errors.estado)!}</span>
            </td>
        </tr>

       

        <tr>
            <td></td>
            <td><@link_to>Cancel</@link_to> | <input type="submit" value="Add new vuelo"></td>

        </tr>


    </table>

</@form>



