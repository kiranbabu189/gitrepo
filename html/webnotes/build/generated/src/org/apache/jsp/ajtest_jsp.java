package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.*;
import javax.sql.*;

public final class ajtest_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/db.jsp");
    _jspx_dependants.add("/header.jsp");
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
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
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
      out.write("        <title>Question</title>\n");
      out.write("        <script src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("             body,html {\n");
      out.write("                /*position: absolute;*/\n");
      out.write("                background-image:url(images/3840x2400.jpg) ;\n");
      out.write("                /*background-size: inherit;*/\n");
      out.write("                /*background-repeat:no-repeat;*/\n");
      out.write("                /*height: 100%;*/\n");
      out.write("                width:100%;\n");
      out.write("                height:100%;\n");
      out.write("                margin:0;\n");
      out.write("                padding:0;\n");
      out.write("                /*z-index:20;*/\n");
      out.write("            }\n");
      out.write("            #imaginary_container{\n");
      out.write("                margin-top:10%; /* Don't copy this */\n");
      out.write("                width:100% !important;\n");
      out.write("            }\n");
      out.write("            .stylish-input-group .input-group-addon{\n");
      out.write("                background: white !important; \n");
      out.write("            }\n");
      out.write("            .stylish-input-group .form-control{\n");
      out.write("                border-right:0; \n");
      out.write("                box-shadow:0 0 0; \n");
      out.write("                border-color:#ccc;\n");
      out.write("            }\n");
      out.write("            .stylish-input-group button{\n");
      out.write("                border:0;\n");
      out.write("                background:transparent;\n");
      out.write("            }\n");
      out.write("/*            .pd{\n");
      out.write("                padding-top: 10px;\n");
      out.write("            }*/\n");
      out.write("            .qbox{\n");
      out.write("                padding-bottom: 10px;\n");
      out.write("            }\n");
      out.write("            .rq{\n");
      out.write("                min-height: 5px !important;\n");
      out.write("                padding: 5px !important;\n");
      out.write("            }\n");
      out.write("            .qarea{\n");
      out.write("                display: hidden;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            function qbox(){\n");
      out.write("                $('.srch').slideToggle(\"slow\");\n");
      out.write("                $('#ask').fadeToggle(\"slow\");\n");
      out.write("                $('.qbox').fadeToggle(\"slow\");\n");
      out.write("//                $('.dnc').hide();\n");
      out.write("            }\n");
      out.write("            function swap_back(){\n");
      out.write("                $('.srch').slideToggle(\"slow\");\n");
      out.write("                $('#ask').fadeToggle(\"slow\");\n");
      out.write("                $('.qbox').fadeToggle(\"slow\");\n");
      out.write("            }\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $('[data-toggle=\"popover\"]').popover();\n");
      out.write("    $('[data-toggle=\"popover\"]').mouseleave(function (){\n");
      out.write("        $('[data-toggle=\"popover\"]').popover('hide');\n");
      out.write("    });\n");
      out.write("    $('form#search').on('submit',function(e){\n");
      out.write("        e.preventDefault();\n");
      out.write("//        $.ajax({\n");
      out.write("//           url:'search.jsp',\n");
      out.write("//           type:'post',\n");
      out.write("//           data:$('form#search').serialize(),\n");
      out.write("//           success:function(data){\n");
      out.write("//               $('.answer').replaceWith(\"<div class=well style=margin-top:1%;>\"+data+\"</div>\");\n");
      out.write("//           },\n");
      out.write("//           error: function(){\n");
      out.write("//               alert(\"errror\");\n");
      out.write("//           }\n");
      out.write("//           \n");
      out.write("//        });\n");
      out.write("        $(this).ajaxSubmit({\n");
      out.write("           beforeSend: function(){\n");
      out.write("               $('#prog').show();\n");
      out.write("               $('#prog').attr('value','0');\n");
      out.write("           },\n");
      out.write("           uploadProgress: function(event,position,total,percentComplete){\n");
      out.write("               $('#prog').attr('value',percentComplete);\n");
      out.write("               $('#percent').html(percentComplete+'%')\n");
      out.write("           },success:function(data){\n");
      out.write("               $('#here').html(data);\n");
      out.write("           }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    ");
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
      out.write("    <body>\n");
      out.write("        ");
 String dm = request.getParameter("pg");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-7 col-md-offset-2 \">\n");
      out.write("                   \n");
      out.write("                    <div class=\"answer\">\n");
      out.write("                         <form action='search.jsp' id=\"search\" method=\"post\">\n");
      out.write("                        <div class=\"srch\" id=\"imaginary_container\" style=\"\"> \n");
      out.write("                            <div class=\"input-group stylish-input-group\">\n");
      out.write("                                <input type=\"text\" name=\"question\" class=\"form-control\"  placeholder=\"Search if your Query has been asked before\" style=\"\">\n");
      out.write("                                <span class=\"input-group-addon\">\n");
      out.write("                                    <button type=\"submit\">\n");
      out.write("                                        <span class=\"glyphicon glyphicon-search\"></span>\n");
      out.write("                                    </button>  \n");
      out.write("                                </span>\n");
      out.write("                            </div>    \n");
      out.write("                        </div>\n");
      out.write("                        </form>\n");
      out.write("                    <div class=\"row srch text-center\">\n");
      out.write("                        <div class=\"col-md-4 col-md-offset-3 \">OR</div>\n");
      out.write("                    </div> <br>\n");
      out.write("                    <div class=\"row text-center qbox\">\n");
      out.write("                        <div class=\"col-md-4 col-md-offset-3 \"><a class=\"btn btn-default glyphicon glyphicon-hand-up\" id=\"ask\" onclick=\"qbox()\" href=\"#\">ASK QUESTION</a></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row text-center\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"qbox\" id=\"qbox\" style=\"display:none;\"> \n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-6 \">&nbsp;</div>\n");
      out.write("                                </div>\n");
      out.write("                                <form class=\"form-inline\" role=\"form\" action=\"insert_question.jsp\" method=\"POST\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"question\" name=\"qhead\" placeholder=\"Enter Question Header\" style=\"width:inherit;\" required>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div><br>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                        <textarea class=\"form-control\" id=\"question\" name=\"qcont\" placeholder=\"Enter Question Content\" style=\"width:inherit; height:100px;\" required></textarea>\n");
      out.write("                                    </div>\n");
      out.write("                                </div><br>\n");
      out.write("                                <div class=\"row sdf\">\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-success\">POST QUESTION</button >\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("                                                <button class=\"btn btn-warning\" onclick=\"swap_back()\">Cancel</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"hidden\" value=\"");
      out.print( dm );
      out.write("\" name=\"dtype\" >\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"well\" style=\"margin-top:3%;\">\n");
      out.write("                        <div class=\"alert alert-info\">\n");
      out.write("                            <strong>Questions Asked Recently</strong> .\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                            ");

                                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                Calendar cal = Calendar.getInstance();
                                //out.println(dateFormat.format(cal.getTime())+"<br>");
                                String s1 = dateFormat.format(cal.getTime());
                                cal.add(Calendar.DATE,-15);
                                String s2 = dateFormat.format(cal.getTime());
                                rs = st.executeQuery("select u.username,q.question from user_details u join keyphrase q on u.u_id = q.u_id and q.post_date <= '"+s1+"' AND q.post_date >='"+s2+"' LIMIT 5");
                                while(rs.next()){
//                                out.println(rs.getString(1));
                                
      out.write("<div class=\"well rq\">\n");
      out.write("                                    <a href=\"#\" data-toggle=\"popover\" title=\"Question asked by\" data-placement=\"bottom\" data-content=\"");
 out.println(rs.getString("username")); 
      out.write('"');
      out.write('>');
 out.println(rs.getString("question")); 
      out.write("</a>\n");
      out.write("                                </div>\n");
      out.write("                            ");
    
                                }
                            
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>    \n");
      out.write("<!--            <div class=\"progress progress-striped active\">\n");
      out.write("                <div class=\"bar\" style=\"width: 20%;\">asd</div>\n");
      out.write("            </div>-->\n");
      out.write("<progress id='prog' max='100' value='0' style='display: none;'>\n");
      out.write("    \n");
      out.write("</progress>\n");
      out.write("<div id='percent'></div>\n");
      out.write("<div id='here'></div>\n");
      out.write("       ");
      out.write("<div class=\"footer\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-left\">\n");
      out.write("\t\t\t\t<h3><a href=\"index.html\">WEBNOTES</a></h3>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-7 footer-left\">\n");
      out.write("\t\t\t\t<ul class=\"foot-nav\">\n");
      out.write("\t\t\t\t\t<li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"services.html\">Top Tutors</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"domains.jsp\">Popular Domains</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"mail.html\">Contact Admin</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<div class=\"footer-line\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<ul class=\"footbo\">\n");
      out.write("\t\t\t\t\t<li><a href=\"mail.html\"><span class=\"glyphicon glyphicon-map-marker\" aria-hidden=\"true\"></span> Show on map</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"mailto:info@example.com\"><span class=\"glyphicon glyphicon-send\" aria-hidden=\"true\"></span>webnotesadmin@gmail.com</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-2 footer-left\">\n");
      out.write("\t\t\t\t<ul class=\"social-icons\">\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-facebook\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-twitter\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\" class=\"icon-button \"><i class=\"icon-g-plus\"></i><span></span></a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<ul class=\"footer-number\">\n");
      out.write("\t\t\t\t\t<li>+1234 567 890</li>\n");
      out.write("\t\t\t\t\t<li>+1234 567 891</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t<p>WebNotes. All rights reserved | Design by <a href=\"http://w3layouts.com/\">Kiran Babu</a></p>\n");
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
      out.write(" \n");
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
