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
        <title>Inicio</title>
    </head>
    <body>
        <h1>Indice</h1>

        <p><a href="Alta.jsp">Alta</a></p>
        <p><a href="visualizar.jsp">Ver socios</a></p>
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
