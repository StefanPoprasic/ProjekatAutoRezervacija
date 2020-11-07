package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class TestVoznja_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Korisnici</title>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\t\t\tfunction showMessage(){\n");
      out.write("\t\t\t\talert(\"Postovani korisnice , nemate pravo na kupovinu online , za vise informacija obratite se na bmw@info.rs\");\n");
      out.write("\t\t\t}\n");
      out.write("\t\t</script>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("               table{\n");
      out.write("                background-color: white;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-image: url(\"slike/11.jpg\");\n");
      out.write("                font-weight: bold;\n");
      out.write("               height: 1200px;\n");
      out.write("  background-position: center;\n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  background-size: cover;\n");
      out.write("  \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            td,input{\n");
      out.write("  padding: 8px;\n");
      out.write("  text-align: left;\n");
      out.write("  border-bottom: 1px solid #ddd;\n");
      out.write("}\n");
      out.write("          \n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <h1 width=\"150px\"><font color=\"white\">Podaci o korisniku i rezervaciji</font></h1>\n");
      out.write("            <input size=\"10\" type=\"hidden\" name=\"korisnik\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.idKorisnik}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <table align=\"center\" background=\"black\">\n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Id korisnika</font></td>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Ime</font></td>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Prezime</font></td>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Email</font></td>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Telefon</font></td>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Omogucena kupovina</font></td>\n");
      out.write("                    <td width=\"150px\" bgcolor=\"blue\"><font color=\"white\">Model</font></td>\n");
      out.write("                    <td colspan=\"2\"  bgcolor=\"blue\"><font color=\"white\">Datum</font></td>\n");
      out.write("                    <td colspan=\"2\" bgcolor=\"blue\"><font color=\"white\">Vreme</font></td>\n");
      out.write("                    <td colspan=\"2\"  bgcolor=\"blue\"><font color=\"white\"></font></td>\n");
      out.write("                    <td colspan=\"2\"  bgcolor=\"blue\"><font color=\"white\"></font></td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write('\n');
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${users}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("user");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                    <tr>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.idKorisnik}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.ime}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.prezime}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.telefon}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.kupovina}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <input size=\"2\" type=\"hidden\" name=\"idKorisnik\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.idKorisnik}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                        <input size=\"2\" type=\"hidden\" name=\"idAuto\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.idAuto}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.marka}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                         <td colspan=\"2\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.datum}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                        <td colspan=\"2\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.vreme}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                       \n");
          out.write("                   </tr>\n");
          out.write("                     <tr>\n");
          out.write("                        <td>\n");
          out.write("                            <a href=\"Admin.jsp\">Vratite se</a>\n");
          out.write("                        </td>\n");
          out.write("                    </tr>\n");
          out.write("                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
