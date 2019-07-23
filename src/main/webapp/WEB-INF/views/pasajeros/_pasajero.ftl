[
<#list pasajeros as pasajero>
    {
        "id":"${pasajero.id}",
        "nombre": "${pasajero.nombre}",
        "apellido": "${pasajero.apellido}",        
        "nacionalidad": "${pasajero.nacionalidad}"
        
    }
    <#if pasajero_has_next>,</#if>
</#list>
]
