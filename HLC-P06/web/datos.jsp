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

        <jsp:useBean id="zodiaco" class="modelo.SignoZodiaco" />

        <%! Socio s;%>
        <%

            HashMap data = (HashMap) session.getAttribute("datos");

            if (data != null) {

                int code = Integer.parseInt(request.getParameter("code"));

                s = (Socio) data.get(code);

                zodiaco.setBirthDate(s.getFechaNacimiento());
            }
        %>

        <h1><%= s.getNombre()%></h1>

        <h1><%= s.getApellido()%></h1>

        <h1><%= s.getSueldo()%></h1>

        <h1><%= zodiaco.getSign()%></h1>

        <h1><%= zodiaco.getAge()%> años</h1>

    </body>
</html>
