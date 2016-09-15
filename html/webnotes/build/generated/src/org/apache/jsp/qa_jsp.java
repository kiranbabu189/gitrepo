package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class qa_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/headert.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("        <title>Q&A</title>\n");
      out.write("        <style>\n");
      out.write("/*            body {\n");
      out.write("                position: absolute;\n");
      out.write("                background-image:url(images/bg.png);\n");
      out.write("                height: 100%;\n");
      out.write("                width:100%;\n");
      out.write("            }*/\n");
      out.write("            .carousel{\n");
      out.write("                background: #2f4357;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            }\n");
      out.write("            .carousel .item img{\n");
      out.write("                margin: 0 auto; /* Align slide image horizontally center */\n");
      out.write("            }\n");
      out.write("            .bs-example{\n");
      out.write("                margin: 20px;\n");
      out.write("            }\n");
      out.write("            .img{\n");
      out.write("                width:1000px;\n");
      out.write("                height:100px;\n");
      out.write("            }\n");
      out.write("            .hh{\n");
      out.write("                 height:10px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>WebNotes</title>\n");
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
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\t\n");
      out.write("<body>\n");
      out.write("    ");

        String act = request.getServletPath();
         
    
      out.write(" \n");
      out.write("    <script>\n");
      out.write("//            document.getElementById(\"/gallery.jsp\").addClass(\"active\");\n");
      out.write("            \n");
      out.write("            \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("<!-- banner -->\n");
      out.write("\t\n");
      out.write("\t\t<div class=\"banner\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t  </button>\n");
      out.write("\t\t\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t\t\t<h1><a class=\"navbar-brand\" href=\"index.html\">WebNotes</a></h1>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse nav-wil\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t<nav class=\"link-effect-4\" id=\"link-effect-4\"> \n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t\t<li id = \"home\"><a href=\"index.jsp\" data-hover=\"Home\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li id = \"tutors\"><a href=\"services.html\" data-hover=\"TOP TUTORS\">Top Tutors</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li id = \"galleryw\"><a href=\"gallery.html\" data-hover=\"Gallery\">Gallery</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li id = \"domainsw\"><a href=\"domains.jsp\" data-hover=\"Popular Domains\">Popular Domains</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li role=\"presentation\" class=\"dropdown \">\n");
      out.write("                                                                    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"  id=\"chng\">DIVE-IN<span class=\"caret\"></span> </a>\n");
      out.write("                                                                        <ul class=\"dropdown-menu dropdown1\">\n");
      out.write("                                                                            <li><a href=\"signin.html\" id=\"chng1\">Sign-In</a></li>\n");
      out.write("                                                                            <li><a href=\"reg_form.html\" id=\"chng2\">Sign-Up</a></li>\n");
      out.write("                                                                        </ul>\n");
      out.write("                                                                </li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- /.navbar-collapse -->\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("                </div>\n");
      out.write("\t\t\n");
      out.write("            ");

        if(session.getAttribute("user") != null ){
            String us = (String)session.getAttribute("user");
            
      out.write(" <script>\n");
      out.write("                \n");
      out.write("                document.getElementById(\"chng\").innerHTML = \"");
      out.print( us );
      out.write("\";\n");
      out.write("                document.getElementById(\"chng1\").innerHTML = \"Logout\";\n");
      out.write("                document.getElementById(\"chng1\").href = \"logout.jsp\";\n");
      out.write("                document.getElementById(\"chng2\").innerHTML = \"Profile\";\n");
      out.write("                document.getElementById(\"chng2\").href = \"profile.jsp\";\n");
      out.write("                var str = \"");
      out.print( act );
      out.write("/\";\n");
      out.write("                var res = str.replace(\".jsp/\",\"w\"); \n");
      out.write("                var res2 = res.replace(\"/\",\"#\");\n");
      out.write("                alert(res2);\n");
      out.write("                $(res2).addClass(\"active\");\n");
      out.write("            </script>\n");
      out.write("            ");

        }
    
      out.write("\n");
      out.write("        <br><br>\n");
      out.write("        ");

            String s = (String)session.getAttribute("user");
            String dm = request.getParameter("dm");
//            if(dm.equals("net")){ dm = "."+dm;%}
            if( s == null){
        
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"well pd\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 text-left\"><h3><a class=\"btn btn-default glyphicon glyphicon-hand-up\" href=\"question.jsp\">POST QUESTION </a>&nbsp;&nbsp;&nbsp; AS GUEST Or  &nbsp;&nbsp;&nbsp;<a class=\"btn btn-default glyphicon glyphicon-hand-up\" href=\"signin.html\">Sign-in</a></h3></div>\n");
      out.write("                    <div class=\"col-md-6 text-right\"><a class=\"btn btn-default glyphicon glyphicon-hand-up\" href=\"#\">View Trending Questions in <span style=\"text-transform: uppercase;\">");
      out.print( dm );
      out.write("</span></a></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");

            }else{
        
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("            <div class=\"well pd\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 text-left\"><h3><a class=\"btn btn-default glyphicon glyphicon-hand-up\" href=\"signin.html\">POST QUESTION </a>&nbsp;&nbsp;&nbsp; <a class=\"btn btn-default glyphicon glyphicon-hand-up\" href=\"signin.html\">View Replies</a></h3></div>\n");
      out.write("                    <div class=\"col-md-6 text-right\"><a class=\"btn btn-default glyphicon glyphicon-hand-up\" href=\"#\">View Trending Questions in <span style=\"text-transform: uppercase;\">");
      out.print( dm );
      out.write("</span></a></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        <div class=\"bs-example\">\n");
      out.write("            <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("            <!-- Carousel indicators -->\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("            </ol>   \n");
      out.write("            <!-- Wrapper for carousel items -->\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"item active\">\n");
      out.write("                    <img src=\"images/");
      out.print( dm );
      out.write("/s1.jpg\" alt=\"First Slide\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"images/");
      out.print( dm );
      out.write("/s2.jpg\" alt=\"Second Slide\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"images/");
      out.print( dm );
      out.write("/s3.jpg\" alt=\"Third Slide\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Carousel controls -->\n");
      out.write("            <a class=\"carousel-control left\" href=\"#myCarousel\" data-slide=\"prev\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"carousel-control right\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("            </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("<div class=\"footer\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-left\">\n");
      out.write("\t\t\t\t<h3><a href=\"index.html\">WEBNOTES</a></h3>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-6 footer-left\">\n");
      out.write("\t\t\t\t<ul class=\"foot-nav\">\n");
      out.write("\t\t\t\t\t<li><a href=\"index.html\">Home</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"services.html\">Services</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"gallery.html\">Gallery</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"short-codes.html\">Short Codes</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"mail.html\">Mail Us</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<div class=\"footer-line\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<ul class=\"footbo\">\n");
      out.write("\t\t\t\t\t<li><a href=\"mail.html\"><span class=\"glyphicon glyphicon-map-marker\" aria-hidden=\"true\"></span> Show on map</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"mailto:info@example.com\"><span class=\"glyphicon glyphicon-send\" aria-hidden=\"true\"></span>info@example.com</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-left\">\n");
      out.write("\t\t\t\t<ul class=\"social-icons\">\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-facebook\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-instagram\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-twitter\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-g-plus\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<ul class=\"footer-number\">\n");
      out.write("\t\t\t\t\t<li>+1234 567 890</li>\n");
      out.write("\t\t\t\t\t<li>+1234 567 891</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t<p>Â© 2016 WebNotes. All rights reserved | Design by <a href=\"http://w3layouts.com/\">Kiran Babu</a></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //footer -->\n");
      out.write("<!-- for bootstrap working -->\n");
      out.write("\t<script src=\"js/bootstrap.js\"></script>\n");
      out.write("<!-- //for bootstrap working -->\n");
      out.write("<!-- here stars scrolling icon -->\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\t/*\n");
      out.write("\t\t\t\tvar defaults = {\n");
      out.write("\t\t\t\tcontainerID: 'toTop', // fading element id\n");
      out.write("\t\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("\t\t\t\tscrollSpeed: 1200,\n");
      out.write("\t\t\t\teasingType: 'linear' \n");
      out.write("\t\t\t\t};\n");
      out.write("\t\t\t*/\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("                        \n");
      out.write("\t</script>\n");
      out.write("<!-- //here ends scrolling icon -->\n");
      out.write("\n");
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
