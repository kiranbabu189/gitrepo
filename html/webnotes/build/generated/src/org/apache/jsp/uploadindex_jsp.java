package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class uploadindex_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body>\n");
      out.write("    <form action=\"upload_form.jsp\" method=\"post\" enctype=\"multipart/form-data\" name=\"form1\">\n");
      out.write("      <table width=\"437\" height=\"291\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("        <tr>\n");
      out.write("          <td width=\"152\"><strong>Full Name </strong></td>\n");
      out.write("          <td width=\"18\"><strong>:</strong></td>\n");
      out.write("          <td width=\"154\"><input name=\"name\" type=\"text\" id=\"name\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td><strong>Age </strong></td>\n");
      out.write("          <td><strong>:</strong></td>\n");
      out.write("          <td><input name=\"age\" type=\"text\" id=\"age\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td><strong>Sex</strong></td>\n");
      out.write("          <td><strong>:</strong></td>\n");
      out.write("          <td><input name=\"sex\" type=\"radio\" value=\"Male\">\n");
      out.write("            Male \n");
      out.write("            <input name=\"sex\" type=\"radio\" value=\"Female\">\n");
      out.write("            Female</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td><strong>Mobile Number </strong></td>\n");
      out.write("          <td><strong>:</strong></td>\n");
      out.write("          <td><input name=\"mobile\" type=\"text\" id=\"mobile\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td><strong>Address</strong></td>\n");
      out.write("          <td><strong>:</strong></td>\n");
      out.write("          <td><textarea name=\"address\" id=\"address\"></textarea></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td><strong>Photo</strong></td>\n");
      out.write("          <td><strong>:</strong></td>\n");
      out.write("          <td><input name=\"photo\" type=\"file\" id=\"photo\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td><strong>Resume</strong></td>\n");
      out.write("          <td><strong>:</strong></td>\n");
      out.write("          <td><input name=\"resume\" type=\"file\" id=\"resume\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td>&nbsp;</td>\n");
      out.write("          <td>&nbsp;</td>\n");
      out.write("          <td><label>\n");
      out.write("            <input type=\"submit\" name=\"Submit\" value=\"Submit\">\n");
      out.write("          </label></td>\n");
      out.write("        </tr>\n");
      out.write("      </table>\n");
      out.write("    </form>\n");
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
