<%--
    Document   : insercion
    Created on : 09-feb-2020, 17:47:08
    Author     : Hyperior
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.Socio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%!
            HashMap<Integer, Socio> socios;
            private int num = 1;
        %>

        <%
            socios = (HashMap) session.getAttribute("datos");

            String name = request.getParameter("nombre");
            String ape = request.getParameter("apellido");
            String sueldo = request.getParameter("sueldo");
            String fechanac = request.getParameter("fecha_nac");

            Float f = Float.parseFloat(sueldo);

            Socio s = new Socio(num + socios.size(), name, ape, f, fechanac);

            num += socios.size();
            socios.put(s.getCodigo(), s);

            session.setAttribute("datos", socios);

        %>

        <jsp:forward page="index.jsp"/>

    </body>
</html>
