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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/nav.css">
        <link rel="stylesheet" type="text/css" href="css/alta.css">
        <script src="js/controlCampos.js"></script>
        <title>Alta</title>
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

        <section id="formulario">
            <div class="row">
                <!-- Grid column -->
                <div class="mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <!-- Form contact -->
                            <form>
                                <h2 class="text-center py-4 font-bold font-up danger-text">Alta de socio</h2>

                                <h3 class="text-center py-4 font-bold font-up danger-text"><%= dia%> del <%= mes%> de <%= anio%></h3>

                                <div class="md-form">
                                    <i class="fa fa-user prefix grey-text"></i>
                                    <input id="nombre" type="text" name="nombre" class="form-control" placeholder="Nombre">

                                </div>
                                <div class="md-form">
                                    <i class="fa fa-id-card prefix grey-text"></i>
                                    <input id="apellido" type="text" name="apellido" class="form-control" placeholder="Apellido">

                                </div>
                                <div class="md-form">
                                    <i class="fa fa-eur prefix grey-text"></i>
                                    <input id="sueldo" type="text" name="sueldo" class="form-control" placeholder="Sueldo">

                                </div>
                                <div class="md-form">
                                    <i class="fa fa-calendar-o prefix grey-text"></i>
                                    <input id="fecha_nac" type="date" name="fecha_nac" max="<%=cadenaFecha%>" class="form-control">

                                </div>
                                <div class="text-center">
                                    <a href="#" class="enlaceboton" onClick="comprobacion()">Enviar</a>
                                    <!--<button class="btn btn-outline-danger btn-lg">Send</button>-->
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
