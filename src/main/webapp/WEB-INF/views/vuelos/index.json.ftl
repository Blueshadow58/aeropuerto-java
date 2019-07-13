[
<#list vuelos as vuelo>
    {
        "id":"${vuelo.id}",
        "nombre": "${vuelo.codigo}",
        "fecha": "${vuelo.fecha}",
        "hora": "${vuelo.hora}",
        "estado": "${vuelo.estado}"
        
    }
    <#if vuelo_has_next>,</#if>
</#list>
]



