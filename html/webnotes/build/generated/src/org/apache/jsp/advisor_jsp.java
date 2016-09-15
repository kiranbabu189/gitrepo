package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class advisor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Advisor Search</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body,html {\n");
      out.write("                background-image:url(images/3840x2400.jpg) ;\n");
      out.write("            }\n");
      out.write("            .pad{\n");
      out.write("                padding-top: 6%;\n");
      out.write("            }\n");
      out.write("            .modal-dialog{\n");
      out.write("                padding-right: 0px;\n");
      out.write("            }\n");
      out.write("    </style>\n");
      out.write("    <script src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("    <body>\n");
      out.write("        ");
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
      out.write("                document.getElementById(\"chng1\").href = \"recordHistory\";\n");
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
      out.write("        <div class=\"container pad\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("            <form id=\"search\" method=\"post\">\n");
      out.write("                        <div class=\"srch\" id=\"imaginary_container\" style=\"\"> \n");
      out.write("                            <div class=\"input-group stylish-input-group\">\n");
      out.write("                                <input type=\"text\" name=\"question\" class=\"form-control\"  placeholder=\"Search\" style=\"\">\n");
      out.write("                                <span class=\"input-group-addon\">\n");
      out.write("                                    <button type=\"submit\">\n");
      out.write("                                        <i class=\"glyphicon glyphicon-search\"></i>\n");
      out.write("                                    </button>  \n");
      out.write("                                </span>\n");
      out.write("                            </div>    \n");
      out.write("                        </div>\n");
      out.write("            </form>\n");
      out.write("\t</div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-offset-1 col-md-10\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                        <img src=\"images/prof.jpg\" width=\"50\" height=\"60\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-8\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Name :  </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Topic : </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Rating : </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\"><br>\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-info\" style=\"width: inherit\" onclick=\"document.getElementById('datefix').style.display='block';\">MEET</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <br>\n");
      out.write("                                <div class=\"row\" id=\"datefix\" style=\"display:none\">\n");
      out.write("                                    <form>\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                    day<select>\n");
      out.write("                                        <option>1</option>\n");
      out.write("                                        <option>2</option>\n");
      out.write("                                        <option>3</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    month<select>\n");
      out.write("                                        <option>10</option>\n");
      out.write("                                        <option>11</option>\n");
      out.write("                                        <option>12</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    year<select>\n");
      out.write("                                        <option>2016</option>\n");
      out.write("                                        <option>2017</option>\n");
      out.write("                                        <option>2018</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <div class='row'>\n");
      out.write("                                        <div class='col-md-12'>\n");
      out.write("                                            <button type='button' style='width:inherit' class='btn btn-send'>Request</button><button type='button' style='width:inherit' class='btn btn-send' onclick=\"document.getElementById('datefix').style.display='none';\">Cancel</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>    \n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                        <img src=\"images/prof.jpg\" width=\"50\" height=\"60\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-8\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Name :  </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Topic : </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Rating : </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\"><br>\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-info\" style=\"width: inherit\" onclick=\"document.getElementById('datefix').style.display='block';\">MEET</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <br>\n");
      out.write("                                <div class=\"row\" id=\"datefix\" style=\"display:none\">\n");
      out.write("                                    <form>\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                    day<select>\n");
      out.write("                                        <option>1</option>\n");
      out.write("                                        <option>2</option>\n");
      out.write("                                        <option>3</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    month<select>\n");
      out.write("                                        <option>10</option>\n");
      out.write("                                        <option>11</option>\n");
      out.write("                                        <option>12</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    year<select>\n");
      out.write("                                        <option>2016</option>\n");
      out.write("                                        <option>2017</option>\n");
      out.write("                                        <option>2018</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <div class='row'>\n");
      out.write("                                        <div class='col-md-12'>\n");
      out.write("                                            <button type='button' style='width:inherit' class='btn btn-send'>Request</button><button type='button' style='width:inherit' class='btn btn-send' onclick=\"document.getElementById('datefix').style.display='none';\">Cancel</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                        <img src=\"images/prof.jpg\" width=\"50\" height=\"60\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-8\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Name :  </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Topic : </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12\"> Rating : </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\"><br>\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-info\" style=\"width: inherit\" onclick=\"document.getElementById('datefix').style.display='block';\">MEET</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>          \n");
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
