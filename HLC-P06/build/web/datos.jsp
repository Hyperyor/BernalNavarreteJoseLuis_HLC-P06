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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/nav.css">
        <link rel="stylesheet" type="text/css" href="css/alta.css">
        <title>Datos del socio</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg fixed-top ">
            <a class="navbar-brand" href="index.jsp" >Inicio</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">     <ul class="navbar-nav mr-4">
                    <li class="nav-item">
                        <a class="nav-link" data-value="alta" href="Alta.jsp">Alta de socio</a>        </li>
                    <li class="nav-item">
                        <a class="nav-link " data-value="vis"href="visualizar.jsp">Ver socios</a>
                    </li>
                </ul>
            </div>
        </nav>

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


        <section id="formulario">
            <div class="row">
                <!-- Grid column -->
                <div class="mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <!-- Form contact -->
                            <form>
                                <h2 class="text-center py-4 font-bold font-up danger-text">Datos del socio</h2>

                                <div class="md-form">

                                    <h5 class="text-center" >Nombre</h5>
                                    <i class="fa fa-user prefix grey-text"></i>
                                    <input type="text" value="<%= s.getNombre()%>" class="form-control" disabled="disabled">

                                </div>
                                <div class="md-form">

                                    <h5 class="text-center" >Apellido</h5>
                                    <i class="fa fa-id-card prefix grey-text"></i>
                                    <input type="text" value="<%= s.getApellido()%>" class="form-control" disabled="disabled">

                                </div>
                                <div class="md-form">

                                    <h5 class="text-center" >Sueldo</h5>
                                    <i class="fa fa-eur prefix grey-text"></i>
                                    <input type="text" value="<%= s.getSueldo()%>" class="form-control" disabled="disabled">

                                </div>
                                <div class="md-form">

                                    <h5 class="text-center" >Edad</h5>
                                    <i class="fa fa-child prefix grey-text"></i>
                                    <input type="text" value="<%= zodiaco.getAge()%>" class="form-control" disabled="disabled">

                                </div>

                                <div class="md-form">

                                    <h5 class="text-center" >Signo del zodíaco</h5>
                                    <i class="fa fa-birthday-cake prefix grey-text"></i>
                                    <input type="text" value="<%= zodiaco.getSign()%>" class="form-control" disabled="disabled">

                                </div>

                            </form>
                            <!-- Form contact -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
