/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function comprobacion()
{
    var nombre = document.getElementById("nombre").value;
    var apellido = document.getElementById("apellido").value;
    var sueldo = document.getElementById("sueldo").value;
    var fecha_nac = document.getElementById("fecha_nac").value;

    cambiarColor(nombre, apellido, sueldo, fecha_nac);

    if (nombre == "" || apellido == "" || (sueldo == "" || isNaN(sueldo)) || fecha_nac == "")
    {
        alert("Campos vacios en el formulario, comprobar de nuevo.");

    } else
    {
        location.href = "insercion.jsp?nombre=" + nombre + "&apellido=" + apellido + "&sueldo=" + sueldo + "&fecha_nac=" + fecha_nac;
    }
}

function cambiarColor(nombre, apellido, sueldo, fecha_nac)
{
    if (nombre == "")
    {
        document.getElementById("nombre").style.backgroundColor = "#F24C46";
    } else
    {
        document.getElementById("nombre").style.backgroundColor = "white";
    }

    if (apellido == "")
    {
        document.getElementById("apellido").style.backgroundColor = "#F24C46";
    } else
    {
        document.getElementById("apellido").style.backgroundColor = "white";
    }

    if (sueldo == "" || isNaN(sueldo))
    {
        document.getElementById("sueldo").style.backgroundColor = "#F24C46";
    } else
    {
        document.getElementById("sueldo").style.backgroundColor = "white";
    }

    if (fecha_nac == "")
    {
        document.getElementById("fecha_nac").style.backgroundColor = "#F24C46";
    } else
    {
        document.getElementById("fecha_nac").style.backgroundColor = "white";
    }
}