<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="java.util.Map"%>
<%@page import="modelo.Socio"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="css/nav.css">
        
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Inicio</title>
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
    
        <header class="header">
            <div class="overlay"></div>
            <div class="container">
              <div class="description ">
                <h1>    Bienvenido a la práctica 6 de Jose Luis Bernal
                  <p>   En esta web practicaremos un poco de jsp mediante
                        la inserción de datos en un HashMap de socios, que será 
                        visible en la página visualizar
                  </p>

                </h1>  
                </div>
            </div>
        </header>
        
       
        <%
            HashMap data = (HashMap) session.getAttribute("datos");

            if (data != null) {

                for (Object value : data.values()) {

                    Socio s = (Socio) value;

                    System.out.println("\n" + s.getNombre());
                }
            } else { //si no existe lo creamos
                HashMap<Integer, Socio> socios = new HashMap<Integer, Socio>();

                Socio s1 = new Socio(1, "Ana", "Ramirez", 50.6f, "1996-02-10");
                Socio s2 = new Socio(2, "Juan", "Fernandez", 200.6f, "1987-10-14");
                Socio s3 = new Socio(3, "Julian", "Monmgyuez", 5000.4f, "2001-12-08");
                Socio s4 = new Socio(4, "Julia", "Vazquez", 70.0f, "1998-07-29");
                Socio s5 = new Socio(5, "Manolo", "Suarez", 50.6f, "1999-06-10");
                /*Socio s6 = new Socio(6, "Ana", "Ramirez", 50.6f, "1996-02-10");
                Socio s7 = new Socio(7, "Ana", "Ramirez", 50.6f, "1996-02-10");
                Socio s8 = new Socio(8, "Ana", "Ramirez", 50.6f, "1996-02-10");
                Socio s9 = new Socio(9, "Ana", "Ramirez", 50.6f, "1996-02-10");
                Socio s10 = new Socio(10, "Ana", "Ramirez", 50.6f, "1996-02-10");*/

                System.out.println("Creamos");
                socios.put(s1.getCodigo(), s1);
                socios.put(s2.getCodigo(), s2);
                socios.put(s3.getCodigo(), s3);
                socios.put(s4.getCodigo(), s4);
                socios.put(s5.getCodigo(), s5);

                session.setAttribute("datos", socios);
            }
        %>

    </body>
</html>
