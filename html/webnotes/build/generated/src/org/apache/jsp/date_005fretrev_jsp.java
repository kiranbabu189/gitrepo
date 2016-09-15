package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.*;
import javax.sql.*;

public final class date_005fretrev_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/db.jsp");
    _jspx_dependants.add("/header.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');

Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost/webnotes","root","");

Statement st= con.createStatement();
Statement st1= con.createStatement();
Statement st3= con.createStatement();
ResultSet rs ;

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("       ");
      out.write("<!--<html>\n");
      out.write("<head>-->\n");
      out.write("\n");
      out.write("<!-- for-mobile-apps -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywo<rds\" content=\"Tycoon Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("\t\tfunction hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //for-mobile-apps -->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- js -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("<!-- //js -->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tjQuery(document).ready(function($) {\n");
      out.write("\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("        \n");
      out.write("</script>\n");
      out.write("<!--</head>-->\n");
      out.write("    ");

        String act = request.getServletPath();
    
      out.write(" \n");
      out.write("    <!--<div class=\"banner2\">-->\n");
      out.write("    <div class=\"header\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("            <nav class=\"navbar navbar-default\">\n");
      out.write("\t\t<div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t            </button>\n");
      out.write("\t\t    <div class=\"logo\">\n");
      out.write("\t\t\t<h1><a class=\"navbar-brand\" href=\"index.jsp\">WebNotes</a></h1>\n");
      out.write("\t\t    </div>\n");
      out.write("\t\t</div>\n");
      out.write("                <div class=\"collapse navbar-collapse nav-wil\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                    <nav class=\"link-effect-4\" id=\"link-effect-4\"> \n");
      out.write("\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("                            <li id=\"indexw\"><a href=\"index.jsp\" data-hover=\"Home\">Home</a></li>\n");
      out.write("                                <li id=\"#\"><a href=\"services.html\" data-hover=\"TOP TUTORS\">Top Tutors</a></li>\n");
      out.write("                                <li id = \"galleryw\"><a href=\"gallery.jsp\" data-hover=\"Gallery\">Gallery</a></li>\n");
      out.write("                                <li id = \"domainsw\"><a href=\"domains.jsp\" data-hover=\"Popular Domains\">Popular Domains</a></li>\n");
      out.write("                                <li role=\"presentation\" class=\"dropdown \">\n");
      out.write("                                    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"  id=\"chng\">DIVE-IN<span class=\"caret\"></span> </a>\n");
      out.write("                                        <ul class=\"dropdown-menu dropdown1\">\n");
      out.write("                                            <li><a href=\"signin.html\" id=\"chng1\">Sign-In</a></li>\n");
      out.write("                                            <li><a href=\"reg_form.html\" id=\"chng2\">Sign-Up</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\t\n");
      out.write("        <script>\n");
      out.write("            var str = \"");
      out.print( act );
      out.write("/\";\n");
      out.write("            var res = str.replace(\".jsp/\",\"w\"); \n");
      out.write("            var res2 = res.replace(\"/\",\"#\");\n");
      out.write("            $(res2).addClass(\"active\");\n");
      out.write("        </script>\n");
      out.write("        ");

            if(session.getAttribute("user") != null ){
                String us = (String)session.getAttribute("user");
        
      out.write(" \n");
      out.write("            <script>\n");
      out.write("                document.getElementById(\"chng\").innerHTML = \"");
      out.print( us );
      out.write("\";\n");
      out.write("                document.getElementById(\"chng1\").innerHTML = \"Logout\";\n");
      out.write("                document.getElementById(\"chng1\").href = \"logout.jsp\";\n");
      out.write("                document.getElementById(\"chng2\").innerHTML = \"Profile\";\n");
      out.write("                document.getElementById(\"chng2\").href = \"profile.jsp\";\n");
      out.write("//                var str = \"");
      out.print( act );
      out.write("/\";\n");
      out.write("//                var res = str.replace(\".jsp/\",\"w\"); \n");
      out.write("//                var res2 = res.replace(\"/\",\"#\");\n");
      out.write("//                $(res2).addClass(\"active\");\n");
      out.write("            </script>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        </div>");
      out.write("\n");
      out.write("        ");

//DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//Calendar cal = Calendar.getInstance();
//out.println(dateFormat.format(cal.getTime())+"<br>");
//String s = dateFormat.format(cal.getTime());
// cal.add(Calendar.DATE,-2);
// out.println(dateFormat.format(cal.getTime()));
//            rs = st.executeQuery("SELECT * FROM keyphrase WHERE post_date BETWEEN '"+s+"' AND '2016-07-16 23:13:05'");
//            while(rs.next()){
//                out.println(rs.getString(1));
//            }
//    ResultSet rs2 ;
//    ResultSet rs3 ;
//    int g,c = 0;
//    rs3 = st3.executeQuery("select u_id from user_details");
//    while(rs3.next()){    
//    String user = rs3.getString("u_id");    
//    rs = st.executeQuery("select d_name from domain");
//    while(rs.next()){
//        String d_name = rs.getString("d_name");
//        rs2 = st1.executeQuery("select count(domain_name) as c_user from keyphrase where u_id = '"+user+"' and domain_name = '"+d_name+"'");
//        while(rs2.next()){
//            g = Integer.parseInt(rs2.getString("c_user"));
//            if(g>c)
//                out.println("User Id: "+user+" Domain: "+d_name+" Count: "+rs2.getString("c_user")+"<br>");
//        }
//    }
//    }
        
      out.write("\n");
      out.write("\n");
      out.write("<!-- Modal -->\n");
      out.write("<div class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\n");
      out.write("  <div class=\"modal-dialog\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("        <h4 class=\"modal-title\">Modal title</h4>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        <p>One fine body&hellip;</p>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\n");
      out.write("      </div>\n");
      out.write("    </div><!-- /.modal-content -->\n");
      out.write("  </div><!-- /.modal-dialog -->\n");
      out.write("</div>\n");
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
