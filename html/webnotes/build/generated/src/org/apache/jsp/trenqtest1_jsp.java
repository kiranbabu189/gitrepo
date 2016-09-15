package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pack.trigram;
import pack.bigram;
import pack.unigram;
import pack.calculate_occurance;
import java.util.ArrayList;
import pack.stopwords;
import pack.special_symbol;
import java.sql.ResultSet;
import java.sql.Statement;
import dbpack.dbclass;

public final class trenqtest1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <!--<link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\">-->\n");
      out.write("        <script src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("        <link href=\"css/trans_div.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <script src=\"js/boot.js\"></script>\n");
      out.write("        <script src=\"js/boot2.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("            <style>\n");
      out.write("            body,html {\n");
      out.write("                /*position: absolute;*/\n");
      out.write("                background-image:url(images/3840x2400.jpg) ;\n");
      out.write("                background-size: inherit;\n");
      out.write("                /*background-repeat:no-repeat;*/\n");
      out.write("                /*height: 100%;*/\n");
      out.write("                width:100%;\n");
      out.write("                height:100%;\n");
      out.write("                margin:0;\n");
      out.write("                padding:0;\n");
      out.write("                z-index:20;\n");
      out.write("            }\n");
      out.write("            .wd{\n");
      out.write("                padding-top: 40px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .img_size{\n");
      out.write("            width:20px;\n");
      out.write("            height:20px;\n");
      out.write("            }\n");
      out.write("            form{\n");
      out.write("                display: inline;\n");
      out.write("            }\n");
      out.write("            #img{\n");
      out.write("        width:248px;\n");
      out.write("        height:235px;\n");
      out.write("    }\n");
      out.write("        </style>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       ");
      out.write("\n");
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
      out.write("        <div class=\"container wd\">\n");
      out.write("            <div class=\"row-fluid\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    ");
  String d_name = "java"; 
//            String domain = request.getParameter("pg");
                        String domain = "java";
                        String red = domain+"_updates.jsp";
                        stopwords ob = new stopwords();
                        special_symbol ob1=new special_symbol();
                        calculate_occurance ob2=new calculate_occurance();
                        unigram ob3=new unigram();
                        bigram ob4=new bigram();
                        trigram ob5=new trigram();
            
                        dbclass db = new dbclass();
                        Statement st = db.con.createStatement();
                        Statement st1 = db.con.createStatement();
                        Statement st2 = db.con.createStatement();
                        Statement st3 = db.con.createStatement();
                        Statement st4 = db.con.createStatement();
            
                        ArrayList<String> wordlist=new ArrayList<String>();
                        ResultSet rs ;
                        String rm;
                        rs = st.executeQuery("select * from keyphrase where domain_name='"+d_name+"'");
                        while(rs.next()){
                    
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 \" id=\"content\">\n");
      out.write("                            <div class=\"well\">\n");
      out.write("                                <h4>");
 out.println(rs.getString("question")); 
      out.write("</h4>\n");
      out.write("                                ");
 
                                   String id=rs.getString("id");
                                   String word= rs.getString("question");
                                   word=ob.words(word);
                                   word=ob1.symbol(word);

                                   String[] str=ob3.word(word);
                                   for(int p=0;p<str.length;p++)
                                   {
                                       wordlist.add(str[p]);
                                   }

                                   String[] str1=ob4.word(word);
                                   for(int p=0;p<str1.length;p++)
                                   {
                                       wordlist.add(str1[p]);
                                   }

                                   String[] str2=ob5.word(word);
                                   for(int p=0;p<str2.length;p++)
                                   {
                                       wordlist.add(str2[p]);
                                   }
               
               
               //unigram bigram trigram
               
                                   ResultSet rs1=st1.executeQuery("select * from answer where q_id='"+id+"' order by ans_id asc");

                                   int[] total=new int[wordlist.size()];

                                   int k=0;
                                   while(rs1.next())
                                   {
                                       int x=0;
                                       String ans=rs1.getString("answer");

                                       ans=ob.words(ans);
                                       ans=ob1.symbol(ans);
                                       //System.out.println("***************************************************");
                                       for(int i=0;i<wordlist.size();i++)
                                       {
                                          x+=ob2.occurance(ans, wordlist.get(i));
                                          //System.out.println(wordlist.get(i)+"    "+x+"       "+ans);
                                       }

                                       total[k]=x;
                                       k++;
                                   }

                                   int max=total[0];
                                   int r=0;
                                   for(int i=0;i<wordlist.size();i++)
                                   {
                                       //out.println("count "+wordlist.get(i)+"     "+total[i]+"<br/>");
                                       if(max<total[i])
                                       {
                                           max=total[i];
                                           r=i++;
                                       }
                                   }

                                   //out.println(max+"   "+r+"<br/>");

                                   ResultSet rs2=st2.executeQuery("select a.ans_id,a.u_id,a.like_val,a.dislike_val,a.answer,b.username,b.image from answer a , user_details b where q_id='"+id+"' and a.u_id = b.u_id order by ans_id asc limit 1 offset "+r+" ");
                                   while(rs2.next())
                                   {
                                       String ans_id=rs2.getString("ans_id");
                                       String ans = rs2.getString("answer");
                                       String like_val = rs2.getString("a.like_val");
                                       String dislike_val = rs2.getString("a.dislike_val");    
                                       String username = rs2.getString("b.username");  
                                       String image = rs2.getString("b.image"); 
                                       String user_id = rs2.getString("a.u_id");
                    //                   out.println("id : "+ans_id+"   answer :  "+ans+"<br/>");
                                       
      out.write("\n");
      out.write("                                    <blockquote>\n");
      out.write("                                        <div>");
      out.print( ans  );
      out.write("<a class=\"helpicon\" href=\"#\"></a></div>\n");
      out.write("                                        <footer>answered by <a href=\"#popup1\" data-toggle=\"modal\" data-target=\"#mo");
      out.print( ans_id );
      out.write("\" onclick=\"callmodal(");
      out.print( ans_id );
      out.write(")\">");
      out.print( username );
      out.write("</a><br>\n");
      out.write("                                            <form id=\"");
      out.print( ans_id );
      out.write("\"><input type=\"hidden\" name =\"id\" value=\"");
      out.print( ans_id );
      out.write("\"> <input type=\"hidden\" name=\"type\" value=\"like\">please rate -- <span id=\"cc");
      out.print( ans_id );
      out.write('"');
      out.write('>');
      out.print( like_val );
      out.write("</span>&nbsp; <a title='like' id=\"");
      out.print( ans_id );
      out.write("\" style=\"cursor:pointer;\" onclick=\"likeval(");
      out.print( ans_id );
      out.write(")\"><span  class=\"glyphicon glyphicon-thumbs-up\"></span></a></form>\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;<form id=\"a");
      out.print( ans_id );
      out.write("\"><input type=\"hidden\" name =\"id\" value=\"");
      out.print( ans_id );
      out.write("\"><input type=\"hidden\" name=\"type\" value=\"dislike\"><span id=\"pp");
      out.print( ans_id );
      out.write('"');
      out.write('>');
      out.print( dislike_val );
      out.write("</span> <a title='dislike' id=\"dislike\" style=\"cursor:pointer;\" onclick=\"dislikeval(");
      out.print( ans_id );
      out.write(")\"><span class=\"glyphicon glyphicon-thumbs-down\"></span></a></form>\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;<form id=\"b");
      out.print( ans_id );
      out.write("\"><input type=\"hidden\" name =\"id\" value=\"");
      out.print( ans_id );
      out.write("\"><a title=\"bookmark\" id=\"bookmark\" style=\"cursor:pointer;\" onclick=\"bookmark(");
      out.print( ans_id );
      out.write(")\"><span  class=\"glyphicon glyphicon-tags\" style=\"\"></span><span id=\"dd");
      out.print( ans_id );
      out.write("\"></span></a></form>\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;<a title=\"comment\" id=\"q");
      out.print( ans_id );
      out.write("\" onclick=\"txt_disp(");
      out.print( ans_id );
      out.write(")\"><span  class=\"glyphicon glyphicon-comment\" style=\"cursor:pointer;\"></span></a>  \n");
      out.write("                                        </footer>\n");
      out.write("                                    </blockquote>\n");
      out.write("                                    <textarea id=\"qa");
      out.print( ans_id );
      out.write("\" style=\"width:100%; display:none;\"></textarea>    \n");
      out.write("                    <div class=\"modal fade\" id=\"mo");
      out.print( ans_id );
      out.write("\" role=\"dialog\">\n");
      out.write("                        <div class=\"modal-dialog\">\n");
      out.write("                            <div class=\"modal-content\">\n");
      out.write("                                <div class=\"modal-header\">\n");
      out.write("                                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                                  <h4 class=\"modal-title\"><img src=\"upload/");
      out.print( image );
      out.write("\" class=\"img-rounded\" id=\"img\" >");
      out.print( username );
      out.write("</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-body\">\n");
      out.write("                                    <input type=\"hidden\" name=\"modval\" id=\"modval\">\n");
      out.write("                                    ");

//                                        String id = request.getParameter("modval"); 
//                                        if(id != null){
                                        ResultSet rs4 ;
//                                        ResultSet rs3 ;
                                        int g,c = 0;   
                                        String disp = null;
//                                        String id = request.getParameter("modval"); 
//                                        rs3 = st3.executeQuery("select d_name from domain");
//                                        while(rs3.next()){
    //                                        String dv_name = rs3.getString("d_name");
                                        rs4 = st4.executeQuery("select count(answer) as c_user from answer where u_id = '"+user_id+"' and domain_name = '"+domain+"'");
                                        rs4.next();
//                                           0000000000000000 g = Integer.parseInt(rs4.getString("c_user"));
                                            
      out.write("<p class=\"text-success\"><em>");
      out.print( rs4.getString("c_user") );
      out.write(" post's in ");
      out.print( domain );
      out.write("</em></p>\n");
      out.write("                                        \n");
      out.write("                                    \n");
      out.write("                                \n");
      out.write("                                   \n");
      out.write("                                    <p><h4>popular in </h4></p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-footer\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("               ");
 }   
                
      out.write("\n");
      out.write("            </div> \n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    ");
 pageContext.include( red ); 
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                <script>\n");
      out.write("//                $(document).ready(function(){\n");
      out.write("                function likeval(x){\n");
      out.write("                    $.ajax({\n");
      out.write("                      url: 'like_count.jsp',\n");
      out.write("                      type: 'post',\n");
      out.write("                      data: $('form#'+x).serialize(),\n");
      out.write("                      success: function(data){\n");
      out.write("                            $(\"#cc\"+x).html(data);\n");
      out.write("                      }\n");
      out.write("                   });\n");
      out.write("                }\n");
      out.write("                function dislikeval(x){\n");
      out.write("                    $.ajax({\n");
      out.write("                      url: 'dislike_count.jsp',\n");
      out.write("                      type: 'post',\n");
      out.write("                      data: $('form#a'+x).serialize(),\n");
      out.write("                      success: function(data){\n");
      out.write("                            $(\"#pp\"+x).html(data);\n");
      out.write("                      }\n");
      out.write("                   });\n");
      out.write("                }\n");
      out.write("                function bookmark(x){\n");
      out.write("                    $.ajax({\n");
      out.write("                      url: 'bookmark.jsp',\n");
      out.write("                      type: 'post',\n");
      out.write("                      data: $('form#b'+x).serialize(),\n");
      out.write("                      success: function(data){\n");
      out.write("                            $(\"#dd\"+x).html(data);\n");
      out.write("                            //$(\"#dd\"+x).css({'color':'red'});\n");
      out.write("                      },\n");
      out.write("                      error: function(data){\n");
      out.write("                          console.log(\"sdfsdf\");\n");
      out.write("                      }\n");
      out.write("                   });\n");
      out.write("                   \n");
      out.write("                }\n");
      out.write("                function txt_disp(x){\n");
      out.write("                    $(\"#qa\"+x).slideToggle();\n");
      out.write("                }\n");
      out.write("                function callmodal(x){\n");
      out.write("                    document.getElementById(\"modval\").value = x;\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("            \n");
      out.write("    ");
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
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("String s1 = rs.getString(\"username\");\n");
      out.write("                    String s2 = rs.getString(\"description\");\n");
      out.write("                    String s3 = rs.getString(\"question\");\n");
      out.write("                    String ans_id = rs.getString(\"id\");\n");
      out.write("                    String s5 = rs.getString(\"image\");\n");
      out.write("                    String s6 = rs.getString(\"u_id\");-->");
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
