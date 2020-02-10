<%--
    Document   : Alta
    Created on : 09-feb-2020, 17:31:32
    Author     : Hyperior
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta</title>
    </head>
    <body>

        <%
            Calendar fecha = Calendar.getInstance();
            int dia = fecha.get(Calendar.DAY_OF_MONTH);
            int mes = fecha.get(Calendar.MONTH) + 1;
            int anio = fecha.get(Calendar.YEAR);

            String cadenaFecha = "" + anio + "-";

            if (mes < 10) {
                cadenaFecha += 0 + "" + mes;
            } else {
                cadenaFecha += mes;
            }

            cadenaFecha += "-";

            if (dia < 10) {
                cadenaFecha += 0 + "" + dia;
            } else {
                cadenaFecha += dia;
            }

            System.out.println("\n" + cadenaFecha);
        %>

        <p>La fecha actual del sistema es <%=dia%> del mes <%=mes%> de <%= anio%></p>

        <form action="insercion.jsp">
            <p>Introduce tus datos, por favor</p>
            <input type="text" name="nombre" placeholder="Nombre"/>
            <input type="text" name="apellido" placeholder="Apellido"/>
            <input type="text" name="sueldo" placeholder="Sueldo"/>
            <input type="date" name="fecha_nac" max="<%=cadenaFecha%>"/>
            <!--<input type="hidden" name="sayHello" value="true">-->
            <input type="submit" value="Enviar"/>
        </form>

        <p><a href="index.jsp">Volver al indice</a></p>
    </body>
</html>
