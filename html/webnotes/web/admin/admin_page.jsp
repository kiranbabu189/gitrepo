<%-- 
    Document   : admin_page
    Created on : 23 Jun, 2016, 5:52:36 PM
    Author     : kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script>
            $(document).ready(function(){
                $(".content").load('admin_home.jsp');
                $('#first').css("background-color", "#e6e6ff"); 
                $(".cc").click(function(e){
                    $("a").css("background-color", "#F8F8F8");   
                    e.preventDefault();
                   var page = $(this).attr('href');
                   $(".content").load(page+'.jsp');
                   $(this).css("background-color", "#e6e6ff"); 
                   $('.head').html( $(this).text() );
//                   return false;
                });
            });
        </script>
    </head>
    <body style="background-image: url('../images/bg.png');">
        <h1>ADMIN PAGE</h1>
        <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" style="width:10%;">
      <a class="navbar-brand head" href="#" >User Quiries</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="admin_home" class="cc" id="first">Home</a></li>
      <li><a href="sug_page" class="cc">Suggestions</a></li>
      <li><a href="flags" class="cc">Flags</a></li>
<!--      <li><a href="#" class="cc">Payments</a></li>-->
      <li ><a href="../logout.jsp">Logout</a></li>
    </ul>
  </div>
</nav>
         <div class="content"></div>
    </body>
</html>
