package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.text.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;

public final class datetest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Display Current Date & Time</title>\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!--<script src=\"js/bootstrap-formhelpers-countries.js\"></script>-->\n");
      out.write("<!--<link href=\"css/bootstrap-form-helpers.min.css\" rel=\"stylesheet\">-->\n");
      out.write("<!--<script src=\"js/bootstrap-formhelpers.min.js\"></script>-->\n");
      out.write("<!--<link href=\"../assets/css/bootstrap.min.css?=129132\" rel=\"stylesheet\">-->\n");
      out.write("<!--<link href=\"../assets/css/bootstrap-formhelpers.min.css\" rel=\"stylesheet\">-->\n");
      out.write("<!--<link href=\"../assets/css/boot.css?=129132\" rel=\"stylesheet\">-->\n");
      out.write("<!--<script src=\"https://cdn.jsdelivr.net/g/bootstrap.formhelpers@1.8.2(js/bootstrap-formhelpers-countries.en_US.js+js/bootstrap-formhelpers-countries.js)\"></script>-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<center>\n");
      out.write("<h1>Display Current Date & Time</h1>\n");
      out.write("</center>\n");

      Date dNow = new Date( );
   SimpleDateFormat ft = 
   new SimpleDateFormat ("yyyy/MM/dd HH:mm:ss");
   String s = ft.format(dNow);
   out.print( "<h2 align=\"center\">" + s + "</h2>");

      out.write("\n");
      out.write("<select class=\"form-control bfh-countries\" data-country=\"US\">\n");
      out.write("    <option>India</option>\n");
      out.write("    <option>USA</option>\n");
      out.write("    <option>Canada</option>\n");
      out.write("    <option>Chile</option>\n");
      out.write("    <option>Russia</option>\n");
      out.write("</select>\n");
      out.write("</body>\n");
      out.write("</html>");
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
