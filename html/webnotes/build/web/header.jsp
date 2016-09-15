<!--<html>
<head>-->

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywo<rds" content="Tycoon Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
        
</script>
<!--</head>-->
    <%
        String act = request.getServletPath();
    %> 
    <!--<div class="banner2">-->
    <div class="header">
	<div class="container">
            <nav class="navbar navbar-default">
		<div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
	            </button>
		    <div class="logo">
			<h1><a class="navbar-brand" href="index.jsp">WebNotes</a></h1>
		    </div>
		</div>
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav class="link-effect-4" id="link-effect-4"> 
			<ul class="nav navbar-nav">
                            <li id="indexw"><a href="index.jsp" data-hover="Home">Home</a></li>
                                <li id="#"><a href="services.html" data-hover="TOP TUTORS">Top Tutors</a></li>
                                <li id = "galleryw"><a href="gallery.jsp" data-hover="Gallery">Gallery</a></li>
                                <li id = "domainsw"><a href="domains.jsp" data-hover="Popular Domains">Popular Domains</a></li>
                                <li role="presentation" class="dropdown ">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"  id="chng">DIVE-IN<span class="caret"></span> </a>
                                        <ul class="dropdown-menu dropdown1">
                                            <li><a href="signin.html" id="chng1">Sign-In</a></li>
                                            <li><a href="reg_form.html" id="chng2">Sign-Up</a></li>
                                        </ul>
                                </li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>	
        <script>
            var str = "<%= act %>/";
            var res = str.replace(".jsp/","w"); 
            var res2 = res.replace("/","#");
            $(res2).addClass("active");
        </script>
        <%
            if(session.getAttribute("user") != null ){
                String us = (String)session.getAttribute("user");
        %> 
            <script>
                document.getElementById("chng").innerHTML = "<%= us %>";
                document.getElementById("chng1").innerHTML = "Logout";
                document.getElementById("chng1").href = "recordHistory";
                document.getElementById("chng2").innerHTML = "Profile";
                document.getElementById("chng2").href = "profile.jsp";
//                var str = "<%= act %>/";
//                var res = str.replace(".jsp/","w"); 
//                var res2 = res.replace("/","#");
//                $(res2).addClass("active");
            </script>
        <%
            }
        %>
        </div>