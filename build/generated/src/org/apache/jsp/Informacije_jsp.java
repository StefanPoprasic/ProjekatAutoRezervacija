package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Informacije_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("      <style>\n");
      out.write("        body{\n");
      out.write("            background-image: url(\"slike/logo2.jpg\");\n");
      out.write("            background-attachment: fixed;\n");
      out.write("            background-size: 100% 100%;\n");
      out.write("        }\n");
      out.write("        .form{\n");
      out.write("            border:4px solid black;\n");
      out.write("            background-image: url(\"slike/logo.jpg\");\n");
      out.write("            width:700px;\n");
      out.write("            height: 500px;\n");
      out.write("             margin: 0;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  -ms-transform: translate(-50%, -50%);\n");
      out.write("  transform: translate(-50%, -50%); \n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Info\" method=\"POST\">\n");
      out.write("            <div class=\"form\" align=\"center\">\n");
      out.write("                <h1>Nov Automobil</h1>\n");
      out.write("                   <c:forEach items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${automobils}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"automobil\">\n");
      out.write("                    <tr>\n");
      out.write("                        <input size=\"10\" type=\"hidden\" name=\"idInfo\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${automobil.idAuto}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        \n");
      out.write("                     </tr>\n");
      out.write("                    \n");
      out.write("                </c:forEach>\n");
      out.write("                <table>\n");
      out.write("         <tr>\n");
      out.write("                        <td>Zapremina :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"zapremina\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Konjska snaga :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"konjskaSnage\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Maksimalna brzina :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"maxBrzina\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Ubrzanje :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"ubrzanje\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                     <tr>\n");
      out.write("                        <td>Potrosnja kombinovana :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"potrosnjaKom\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Tekst :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"tekst\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                     <tr>\n");
      out.write("                    <td><input type=\"submit\" nama=\"potvrdi\" value=\"Potvrdi\"></td>\n");
      out.write("                    <td><input type=\"reset\" name=\"resetuj\" value=\"Reset\"></td>\n");
      out.write("                </tr>\n");
      out.write("                </table>\n");
      out.write("                <br><br> Imate nalog? <a href=\"Logovanje.jsp\">Ulogujte se !</a>\n");
      out.write("            <br>");
 String message=(String) request.getAttribute("message");
            if(message != null && message.length()>0){
                
      out.write("\n");
      out.write("                <p>");
      out.print(message);
      out.write("</p>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
