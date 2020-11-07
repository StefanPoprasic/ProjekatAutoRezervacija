package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class IzborSerija_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
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
      out.write("           \n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 align=\"center\">DOBRODOSLI</h1>\n");
      out.write("             <div class=\"w3-content w3-section\" style=\"width:100%\">\n");
      out.write("                 \n");
      out.write("  <img class=\"mySlides w3-animate-fading\" src=\"slike/c.jpg\" style=\"width:100%\">\n");
      out.write(" \n");
      out.write(" \n");
      out.write("                 </div>\n");
      out.write("<h1 align=\"center\">IZABERITE SERIJU</h1>\n");
      out.write("            <script>\n");
      out.write("var myIndex = 0;\n");
      out.write("carousel();\n");
      out.write("\n");
      out.write("function carousel() {\n");
      out.write("  var i;\n");
      out.write("  var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("  for (i = 0; i < x.length; i++) {\n");
      out.write("    x[i].style.display = \"none\";  \n");
      out.write("  }\n");
      out.write("  myIndex++;\n");
      out.write("  if (myIndex > x.length) {myIndex = 1}    \n");
      out.write("  x[myIndex-1].style.display = \"block\";  \n");
      out.write("  setTimeout(carousel, 9000);    \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("        <form align=\"center\" action=\"Izbor\" method=\"POST\">\n");
      out.write("       \n");
      out.write("        <table align=\"left|right|center\">\n");
      out.write("            <tr>\n");
      out.write("            <button class=\"button\" type=\"submit\" name=\"id\" value=\"1\"><h1 align=\"center\" color=\"white\">BMW SERIJA 1</h1> <img src=\"slike/bmw1.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"2\" ><h1 align=\"center\">BMW SERIJA 2</h1><img src=\"slike/bmw2.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"3\" ><h1 align=\"center\">BMW SERIJA 3</h1><img src=\"slike/bmw3.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"4\" ><h1 align=\"center\">BMW SERIJA 4</h1><img src=\"slike/bmw4.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"5\" ><h1 align=\"center\">BMW SERIJA 5</h1><img src=\"slike/bmw5.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"6\" ><h1 align=\"center\">BMW SERIJA 6</h1><img src=\"slike/bmw6.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"7\" ><h1 align=\"center\">BMW SERIJA 7</h1><img src=\"slike/bmw7.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                    <button class=\"button\" type=\"submit\" name=\"id\" value=\"8\" ><h1 align=\"center\">BMW SERIJA 8</h1><img src=\"slike/bmw8.jpg\" width=\"700\" height=\"500\"></button>\n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
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
