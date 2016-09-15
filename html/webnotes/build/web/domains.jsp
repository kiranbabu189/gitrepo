<%-- 
    Document   : domains
    Created on : 3 Jun, 2016, 10:51:09 AM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOMAINS</title>
        <style>
            body {
                background-image:url(images/3840x2400.jpg);
            }
            .pd{
                margin-top: 50px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container pd">
            <div class="jumbotron">
                <h2>POPULAR DOMAINS IN WEBNOTES</h2>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="title">PHP</h3>
                            </div>
                            <div class="panel-body">
                                PHP is a server-side scripting language designed for web development but also used as a general-purpose programming language.<br>
                            <div class='pull-right'>
                                    <button type="button" class="btn btn-primary btn-xs" onclick="window.location.href='qa.jsp?dm=php'">Find More</button>
                            </div>
                            </div>
                        </div> 
                    </div>
                </div>
                 <div class="col-md-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="title">JAVA SCRIPT</h3>
                            </div>
                            <div class="panel-body">
                                JavaScript is the programming language of HTML and the Web.Programming makes computers do what you want them to do.JavaScript is easy to learn.<br>
                            <div class='pull-right'>
                                    <button type="button" class="btn btn-primary btn-xs" onclick="window.location.href='qa.jsp?dm=js'">Find More</button>
                            </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="title">.NET</h3>
                            </div>
                            <div class="panel-body">
                                Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python's simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance.<br> 
                            <div class='pull-right'>
                                    <button type="button" class="btn btn-primary btn-xs" onclick="window.location.href='qa.jsp?dm=net'">Find More</button>
                            </div>
                            </div>
                        </div> 
                    </div>
                </div>
                
               
                <div class="col-md-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="title">PYTHON</h3>
                            </div>
                            <div class="panel-body">
                                Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python's simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance.<br> 
                            <div class='pull-right'>
                                    <button type="button" class="btn btn-primary btn-xs" onclick="window.location.href='qa.jsp?dm=python'">Find More</button>
                            </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="title">JAVA</h3>
                            </div>
                            <div class="panel-body">
                                Java is a set of computer software and specifications developed by Sun Microsystems, which was later acquired by the Oracle Corporation, that provides a system for developing application software and deploying it in a cross-platform computing environment.<br>
                            <div class='pull-right'>
                                    <button type="button" class="btn btn-primary btn-xs" onclick="window.location.href='qa.jsp?dm=java'">Find More</button>
                            </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="title">RUBY</h3>
                            </div>
                            <div class="panel-body">
                                Ruby is a scripting language designed by Yukihiro Matsumoto, also known as Matz. It runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX. This tutorial gives a complete understanding on Ruby.<br>
                                <div class='pull-right'>
                                    <button type="button" class="btn btn-primary btn-xs" onclick="window.location.href='qa.jsp?dm=ruby'">Find More</button>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <!--</div>-->
        
    </body>
    <%@ include file="footer.jsp" %>
</html>
