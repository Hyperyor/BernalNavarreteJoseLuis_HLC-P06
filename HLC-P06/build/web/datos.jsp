<%--
    Document   : datos
    Created on : 10-feb-2020, 2:10:31
    Author     : Hyperior
--%>

<%@page import="java.util.HashMap"%>
<%@page import="modelo.Socio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%! Socio s;%>
        <%
            System.out.println("\nno Encontramos el mapa");
            HashMap data = (HashMap) session.getAttribute("datos");
            System.out.println("\nEncontramos el mapa");
            if (data != null) {
                System.out.println("\nLos datos no son nulos");

                int code = Integer.parseInt(request.getParameter("code"));

                s = (Socio) data.get(code);
            }
        %>

        <h1><%= s.getNombre()%></h1>

    </body>
</html>
