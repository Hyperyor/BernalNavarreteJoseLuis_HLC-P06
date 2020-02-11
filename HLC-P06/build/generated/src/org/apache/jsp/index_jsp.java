package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.jasper.tagplugins.jstl.ForEach;
import java.util.Map;
import modelo.Socio;
import java.util.HashMap;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/index.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/nav.css\">\r\n");
      out.write("        \r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n");
      out.write("        <title>Inicio</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg fixed-top \">  \r\n");
      out.write("            <a class=\"navbar-brand\" href=\"index.jsp\" >Inicio</a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">  \r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"collapse navbar-collapse \" id=\"navbarSupportedContent\">     <ul class=\"navbar-nav mr-4\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" data-value=\"alta\" href=\"Alta.jsp\">Alta de socio</a>        </li>  \r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link \" data-value=\"vis\"href=\"visualizar.jsp\">Ver socios</a>    \r\n");
      out.write("                </li>\r\n");
      out.write("                </ul> \r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    \r\n");
      out.write("        <header class=\"header\">\r\n");
      out.write("            <div class=\"overlay\"></div>\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("              <div class=\"description \">\r\n");
      out.write("                <h1>    Bienvenido a la práctica 6 de Jose Luis Bernal\r\n");
      out.write("                  <p>   En esta web practicaremos un poco de jsp mediante\r\n");
      out.write("                        la inserción de datos en un HashMap de socios, que será \r\n");
      out.write("                        visible en la página visualizar\r\n");
      out.write("                  </p>\r\n");
      out.write("\r\n");
      out.write("                </h1>  \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("        \r\n");
      out.write("       \r\n");
      out.write("        ");

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
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
