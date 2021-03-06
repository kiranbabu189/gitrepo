<%-- 
    Document   : question
    Created on : 5 Jun, 2016, 11:12:12 AM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.util.Calendar"%>
        <%@page import="java.text.DateFormat"%>
        <%@page import="java.text.SimpleDateFormat"%>
        <%@include file='db.jsp' %>
        <title>Question</title>
        <script src="js/jquery-2.1.4.min.js"></script>
        <style>
             body,html {
                /*position: absolute;*/
                background-image:url(images/3840x2400.jpg) ;
                /*background-size: inherit;*/
                /*background-repeat:no-repeat;*/
                /*height: 100%;*/
                width:100%;
                height:100%;
                margin:0;
                padding:0;
                /*z-index:20;*/
            }
            #imaginary_container{
                margin-top:10%; /* Don't copy this */
                width:100% !important;
            }
            .stylish-input-group .input-group-addon{
                background: white !important; 
            }
            .stylish-input-group .form-control{
                border-right:0; 
                box-shadow:0 0 0; 
                border-color:#ccc;
            }
            .stylish-input-group button{
                border:0;
                background:transparent;
            }
/*            .pd{
                padding-top: 10px;
            }*/
            .qbox{
                padding-bottom: 10px;
            }
            .rq{
                min-height: 5px !important;
                padding: 5px !important;
            }
            .qarea{
                display: hidden;
            }
        </style>
        <script>
            function qbox(){
                $('.srch').slideToggle("slow");
                $('#ask').fadeToggle("slow");
                $('.qbox').fadeToggle("slow");
//                $('.dnc').hide();
            }
            function swap_back(){
                $('.srch').slideToggle("slow");
                $('#ask').fadeToggle("slow");
                $('.qbox').fadeToggle("slow");
            }
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();
    $('[data-toggle="popover"]').mouseleave(function (){
        $('[data-toggle="popover"]').popover('hide');
    });
    $('form#search').submit(function(e){
        e.preventDefault();
        $.ajax({
           url:'search3.jsp',
           type:'post',
           data:$('form#search').serialize(),
           success:function(data){
               $('.answer').replaceWith("<div class='well re' style=margin-top:1%;>"+data+"</div>");
               
           },
           error: function(data){
               alert(data);
           }
        });
    });
});
        </script>
    </head>
    <%@ include file="header.jsp" %>
    <body>
        <% String dm = request.getParameter("pg");%>
            <div class="row">
                <div class="col-md-7 col-md-offset-2 ">
                   <div class="parent">
                    <div class="answer">
                        <form id="search" method="post">
                        <div class="srch" id="imaginary_container" style=""> 
                            <div class="input-group stylish-input-group">
                                <input type="text" name="question" class="form-control"  placeholder="Search if your Query has been asked before" style="">
                                <span class="input-group-addon">
                                    <button type="submit">
                                        <span class="glyphicon glyphicon-search"></span>
                                    </button>  
                                </span>
                            </div>    
                        </div>
                        </form>
                    <div class="row srch text-center">
                        <div class="col-md-4 col-md-offset-3 ">OR</div>
                    </div> <br>
                    <div class="row text-center qbox">
                        <div class="col-md-4 col-md-offset-3 "><a class="btn btn-default glyphicon glyphicon-hand-up" id="ask" onclick="qbox()" href="#">ASK QUESTION</a></div>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-12">
                            <div class="qbox" id="qbox" style="display:none;"> 
                                <div class="row">
                                    <div class="col-md-6 ">&nbsp;</div>
                                </div>
                                <form class="form-inline" role="form" action="insert_question.jsp" method="POST">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input type="text" class="form-control" id="question" name="qhead" placeholder="Enter Question Header" style="width:inherit;" required>
                                        </div>
                                    </div><br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea class="form-control" id="question" name="qcont" placeholder="Enter Question Content" style="width:inherit; height:100px;" required></textarea>
                                    </div>
                                </div><br>
                                <div class="row sdf">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="submit" class="btn btn-success">POST QUESTION</button >
                                            </div>
                                            <div class="col-md-6">
                                                <button class="btn btn-warning" onclick="swap_back()">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" value="<%= dm %>" name="dtype" >
                                </form>
                            </div>
                        </div> 
                    </div>
                </div>
                </div>
                </div>
                <div class="col-md-3">
                    <div class="well" style="margin-top:3%;">
                        <div class="alert alert-info">
                            <strong>Questions Asked Recently</strong> .
                        </div>
                        
                            <%
                                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                Calendar cal = Calendar.getInstance();
                                //out.println(dateFormat.format(cal.getTime())+"<br>");
                                String s1 = dateFormat.format(cal.getTime());
                                cal.add(Calendar.DATE,-25);
                                String s2 = dateFormat.format(cal.getTime());
                                rs = st.executeQuery("select u.username,q.question from user_details u join keyphrase q on u.u_id = q.u_id and q.post_date <= '"+s1+"' AND q.post_date >='"+s2+"' LIMIT 5");
                                while(rs.next()){
//                                out.println(rs.getString(1));
                                %><div class="well rq">
                                    <a href="#" data-toggle="popover" title="Question asked by" data-placement="bottom" data-content="<% out.println(rs.getString("username")); %>"><% out.println(rs.getString("question")); %></a>
                                </div>
                            <%    
                                }
                            %>
                    </div>
                </div>
            </div> 
                    <div class="row shsearch" style="display: none;">
                        <div class="col-md-offset-1 col-md-10">
                            <div class="container">
                                <gcse:search></gcse:search>
                            </div>
                        </div>
                    </div>        
<!--            <div class="progress progress-striped active">
                <div class="bar" style="width: 20%;">asd</div>
            </div>-->
            <script>
            function dispr(){
                for(i=1;i<=3;i++){
                    $("#"+i).show();
                    $("#hme").hide();
                }
            }
            function htag(x){
                $("#"+x).hide();
                
            }
            function sendq(x){   
//                var data = document.getElementById("#"+x).dataset.value;
                console.log(x); 
                $.ajax({
                    url:'search3.jsp',
                    type:'post',
                    data:$("#search"+x).serialize(),
                    success: function(data){
//                        location.reload();
//                        $('div').remove(".answer");.trim
                        $('.re').replaceWith("<div class='well re' style=margin-top:1%;>"+data.trim()+"</div>");
//                        console.log(data.trim());
                    },
                    error: function(data){
                        alert(data);
                    }
                });
            }
            function searchWeb(){
                $(".shsearch").show();
            }
              (function() {
    var cx = '005923413849997823644:mnefherhhwa';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
///    alert(s);
   s.parentNode.insertBefore(gcse, s);
  })();
//        </script>        
       <%@include file="footer.jsp" %> 
    </body>
</html>
