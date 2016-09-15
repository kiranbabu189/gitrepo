<%-- 
    Document   : qa
    Created on : 4 Jun, 2016, 4:08:17 PM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Q&A</title>
        <style>
            body {
/*                position: absolute;*/
                background-image:url(images/3840x2400.jpg);
                height: 100%;
                width:100%;
            }
            .carousel{
                background: #2f4357;
                margin-top: 20px;
            }
            .carousel .item img{
                margin: 0 auto; /* Align slide image horizontally center */
            }
            .bs-example{
                margin: 20px;
            }
            .img{
                width:1000px;
                height:100px;
            }
            .hh{
                 height:10px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br><br>
        <%
            String s = (String)session.getAttribute("user");
            String dm = request.getParameter("dm");
//            if(dm.equals("net")){ dm = "."+dm;%}
            if( s == null){
        %>
        <div class="container">
            <div class="well pd">
                <div class="row">
                    <div class="col-md-6 text-left"><h3><a class="btn btn-default glyphicon glyphicon-hand-up" href="question.jsp?pg=<%= dm %>">SEARCH QUESTION </a>&nbsp;&nbsp;&nbsp; SIGN-IN TO ASK  &nbsp;&nbsp;&nbsp;<a class="btn btn-default glyphicon glyphicon-hand-up" href="signin.html?pg=qa">Sign-in</a></h3></div>
                    <div class="col-md-6 text-right"><a class="btn btn-default glyphicon glyphicon-hand-up" href="trendqs.jsp?pg=<%= dm %>">View Trending Questions in <span style="text-transform: uppercase;"><%= dm %></span></a></div>
                </div>
            </div>
        </div>
        <%
            }else{
        %>
            <div class="container">
            <div class="well pd">
                <div class="row">
                    <div class="col-md-6 text-left"><h3><a class="btn btn-default glyphicon glyphicon-hand-up" href="question.jsp?pg=<%= dm %>">SEARCH QUESTION </a>&nbsp;&nbsp;&nbsp; <a class="btn btn-default glyphicon glyphicon-hand-up" href="signin.html">View Replies</a>&nbsp;&nbsp;&nbsp;<a class="btn btn-default glyphicon glyphicon-hand-up" href="rateTeacher.jsp">Advisor Search</a></h3></div>
                    <div class="col-md-6 text-right"><a class="btn btn-default glyphicon glyphicon-hand-up" href="trendqs.jsp?pg=<%= dm %>">View Trending Questions in <span style="text-transform: uppercase;"><%= dm %></span></a></div>
                </div>
            </div>
        </div>
        <%
            }
        %>
        <div class="bs-example">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Carousel indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>   
            <!-- Wrapper for carousel items -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/<%= dm %>/s1.jpg" alt="First Slide">
                </div>
                <div class="item">
                    <img src="images/<%= dm %>/s2.jpg" alt="Second Slide">
                </div>
                <div class="item">
                    <img src="images/<%= dm %>/s3.jpg" alt="Third Slide">
                </div>
            </div>
            <!-- Carousel controls -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
            </div>
        </div>
                <!--</div>-->
        
    </body>
    <%@include file="footer.jsp" %>
</html>
