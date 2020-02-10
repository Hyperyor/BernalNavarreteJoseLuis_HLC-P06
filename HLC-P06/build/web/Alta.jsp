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
        <script src="js/controlCampos.js"></script>
        <title>Alta</title>
    </head>
    <body>

        <jsp:useBean id="clock" class="modelo.JspCalendar" />
        <%
            //Calendar fecha = Calendar.getInstance();
            int dia = clock.getDayOfMonth();
            int mes = clock.getMonthInt();
            int anio = clock.getYear();

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



        <p>La fecha actual del sistema es <%= dia%> del mes <%= mes%> de <%= anio%></p>

        <form action="insercion.jsp">
            <p>Introduce tus datos, por favor</p>
            <input id="nombre" type="text" name="nombre" placeholder="Nombre"/>
            <input id="apellido" type="text" name="apellido" placeholder="Apellido"/>
            <input id="sueldo" type="text" name="sueldo" placeholder="Sueldo"/>
            <input id="fecha_nac" type="date" name="fecha_nac" max="<%=cadenaFecha%>"/>
            <!--<input type="hidden" name="sayHello" value="true">-->
            <!--<input type="submit" value="Enviar"/>-->
        </form>

        <a href="#" class="enlaceboton" onClick="comprobacion()">Enviar</a>

        <p><a href="index.jsp">Volver al indice</a></p>
    </body>
</html>
