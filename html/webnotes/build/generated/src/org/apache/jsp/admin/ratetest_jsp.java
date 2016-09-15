package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import java.util.Calendar;
import java.text.DateFormat;
import java.sql.Statement;
import dbpack.dbclass;

public final class ratetest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Bootstrap Example</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <script>\n");
      out.write("\n");
      out.write("function changeme(n,x){\n");
      out.write("    var i,check;\n");
      out.write("    check = x.src;\n");
      out.write("    var arr = new Array();\n");
      out.write("    arr = [\"img1\",\"img2\",\"img3\",\"img4\",\"img5\"];\n");
      out.write("//    alert(check);\n");
      out.write("    if(check == \"http://localhost:8080/webnotes/admin/images/Cool_Smiley_Face.png\"){\n");
      out.write("        for(i = n ; i < 5 ; i++){\n");
      out.write("            document.getElementById(arr[i]).src = \"images/slika_8.png\";\n");
      out.write("        }\n");
      out.write("        document.getElementById('rate').value = n;\n");
      out.write("    }\n");
      out.write("    else{\n");
      out.write("        for(i=0 ; i < n ; i++){\n");
      out.write("            document.getElementById(arr[i]).src = \"images/Cool_Smiley_Face.png\";\n");
      out.write("        }\n");
      out.write("        document.getElementById('rate').value = n;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function backto(){\n");
      out.write("    var arr = new Array();\n");
      out.write("    arr = [\"img1\",\"img2\",\"img3\",\"img4\",\"img5\"];\n");
      out.write("    for(i = 0 ; i < 5 ; i++){\n");
      out.write("            document.getElementById(arr[i]).src = \"images/slika_8.png\";\n");
      out.write("        }\n");
      out.write("}\n");
      out.write("\n");
      out.write("  </script>\n");
      out.write("  <style>\n");
      out.write("      \n");
      out.write("            .img_size{\n");
      out.write("    width:60px;\n");
      out.write("    height:60px;\n");
      out.write("}\n");
      out.write("  </style>\n");
      out.write("      \n");
      out.write("</head>\n");
      out.write("<body>\n");

    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Calendar cal = Calendar.getInstance();
                                //out.println(dateFormat.format(cal.getTime())+"<br>");
    String s1 = dateFormat.format(cal.getTime());
    dbclass ob = new dbclass();
    Statement st = ob.con.createStatement();
    String id = (String)session.getAttribute("id");
    ResultSet rs;
    rs = st.executeQuery("select * from rate where l_id = '"+id+"' and schedule_date <= '"+s1+"' and  flag = '0' ");
    if(rs.next()){ 
      out.write("\n");
      out.write("        <script>\n");
      out.write("        $(window).load(function(){\n");
      out.write("        $('#myModal').modal('show');\n");
      out.write("    });\n");
      out.write("    </script>");

    }

      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("  <h2>Rate</h2>\n");
      out.write("  <!-- Trigger the modal with a button -->\n");
      out.write("  <button type=\"button\" class=\"btn btn-info btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\">Open Modal</button>\n");
      out.write("\n");
      out.write("  <!-- Modal -->\n");
      out.write("  <div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("    \n");
      out.write("      <!-- Modal content-->\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-header\">\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("          <h4 class=\"modal-title\">Rate</h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-body\">\n");
      out.write("          <p>Please rate your last advisor</p>\n");
      out.write("            <form role=\"form\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("          \t<img class=\"img_size\" id=\"img1\" onmouseover=\"changeme(1,this)\" src=\"images/slika_8.png\">\n");
      out.write("\t\t<img class=\"img_size\" id=\"img2\" onmouseover=\"changeme(2,this)\" src=\"images/slika_8.png\">\n");
      out.write("\t\t<img class=\"img_size\" id=\"img3\" onmouseover=\"changeme(3,this)\" src=\"images/slika_8.png\">\n");
      out.write("\t\t<img class=\"img_size\" id=\"img4\" onmouseover=\"changeme(4,this)\" src=\"images/slika_8.png\">\n");
      out.write("\t\t<img class=\"img_size\" id=\"img5\" onmouseover=\"changeme(5,this)\" src=\"images/slika_8.png\">\n");
      out.write("                <input type=\"hidden\" id=\"rate\" value=\"\" name=\"rate\"/>\n");
      out.write("            </div>    \n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-default\">Rate</button>\n");
      out.write("                <button type=\"reset\" class=\"btn btn-default\" onclick=\"backto(); \">Reset</button>\n");
      out.write("            </div>\n");
      out.write("            </form>\n");
      out.write("        <div class=\"modal-footer\">\n");
      out.write("          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
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
