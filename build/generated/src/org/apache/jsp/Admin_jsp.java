package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background: black;\n");
      out.write("            }\n");
      out.write("            .button{\n");
      out.write("                background-color: black;\n");
      out.write("                border: none;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            .button:hover {\n");
      out.write("                background-color: gray;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                color:white\n");
      out.write("            }\n");
      out.write("              .odjava{\n");
      out.write("             border:4px solid white;\n");
      out.write("             background-color: blue;\n");
      out.write("             width: 80px;\n");
      out.write("             float: right;\n");
      out.write("             color: white;\n");
      out.write("            }\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("      <div class=\"odjava\">\n");
      out.write("            \n");
      out.write("        <a href=\"Logovanje.jsp\">Odjavi se</a>\n");
      out.write("        </div> \n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <table align=\"left|right|center\">\n");
      out.write("            <tr>\n");
      out.write("                <form action=\"PregledAutomobila\" method=\"POST\">\n");
      out.write("            <button class=\"button\" type=\"submit\" name=\"id\" value=\"1\"><h1 align=\"center\" color=\"white\">Pregled automobila</h1> <img src=\"slike/all.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("                </form>\n");
      out.write("                </tr>\n");
      out.write("            <tr>\n");
      out.write("                <form action=\"Klijenti\" method=\"POST\">\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"2\" ><h1 align=\"center\">Pregled klijenata</h1><img src=\"slike/client.jpeg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </form>\n");
      out.write("                </tr>\n");
      out.write("            <tr>\n");
      out.write("                <form action=\"TestVoznja\" method=\"POST\">\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"3\" ><h1 align=\"center\">Rezervacija test voznje</h1><img src=\"slike/key.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("           </form>\n");
      out.write("                </tr>\n");
      out.write("            <tr>\n");
      out.write("                <form action=\"TestVoznja\" method=\"POST\">\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"4\" ><h1 align=\"center\">Prodati automobili</h1><img src=\"slike/buy.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </form>\n");
      out.write("                </tr>\n");
      out.write("           \n");
      out.write("            </table>\n");
      out.write("       \n");
      out.write("      </body>\n");
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
