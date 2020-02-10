<%--
    Document   : visualizar
    Created on : 10-feb-2020, 1:58:25
    Author     : Hyperior
--%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.Socio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Socios</title>
    </head>
    <body>
        <section id="Datos">
            <div class="table-responsive">
                <table class="table table-hover table-dark">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Appelido</th>
                            <th scope="col">Sueldo</th>
                            <th scope="col">Fecha de nacimiento</th>
                            <th scope="col">Calcular</th>
                        </tr>
                    </thead>
                    <tbody>


                        <%
                            HashMap data = (HashMap) session.getAttribute("datos");

                            if (data != null) {
                                for (Object value : data.values()) {
                                    Socio s = (Socio) value;
                                    String url = "datos.jsp?code=" + s.getCodigo();
                        %>
                        <tr>
                            <th scope="row"><%= s.getNombre()%></th>
                            <td><%= s.getApellido()%></td>
                            <td><%= s.getSueldo()%></td>
                            <td><%= s.getFechaNacimiento()%></td>
                            <td><a href="<%=url%>">Calcular</a></td>
                        <tr>
                            <%
                                    }
                                }


                            %>


                    </tbody>
                </table>
            </div>
        </section>
    </body>
</html>
