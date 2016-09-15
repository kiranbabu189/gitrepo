<%-- 
    Document   : trendqs
    Created on : 6 Jun, 2016, 6:58:39 PM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.4.min.js"></script>
        <link href="css/trans_div.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body,html {
                /*position: absolute;*/
                background-image:url(images/3840x2400.jpg) ;
                background-size: inherit;
                /*background-repeat:no-repeat;*/
                /*height: 100%;*/
                width:100%;
                height:100%;
                margn:0;
                padding:0;
                z-index:20;
            }
            .wd{
                padding-top: 40px;
                
            }
            .img_size{
            width:20px;
            height:20px;
            }
            form{
                display: inline;
            }
        </style>
    </head>
    <body>
        <%@include file="db.jsp" %>
        <%@include file="header.jsp" %>  
        <div class="container wd">
            <div class="row-fluid">
                <div class="col-md-8">
                <%
                String domain = request.getParameter("pg");
                String red = domain+"_updates.jsp";
                //out.println(red);
                rs = st.executeQuery("select username,question,description,id,like_val,dislike_val from keyphrase, user_details where keyphrase.u_id = user_details.u_id and keyphrase.domain_name='"+domain+"'"); 
                if(rs.next()){
                do{
                    
                    String s1 = rs.getString("username");
                    String s2 = rs.getString("description");
                    String s3 = rs.getString("question");
                    String s4 = rs.getString("id");
                    //out.println(s4);
                %>
                <div class="row">
                     <div class="col-md-12 " id="content">
                       <div class="well">
                           
                            <h4><%= s3 %> </h4>
                            <blockquote>
                                <div class="truncate"><%= s2  %><a class="helpicon" href="#"></a></div>
                                <footer>answered by <a href="#popup1"><%= s1 %></a><br>
                                    <form id="<%= s4 %>"><input type="hidden" name ="id" value="<%= s4 %>"> <input type="hidden" name="type" value="like">please rate -- <span id="cc<%= s4 %>"><% out.println(rs.getString("like_val")); %></span>&nbsp; <a title='like' id="<%= s4 %>" style="cursor:pointer;" onclick="likeval(<%= s4 %>)"><span  class="glyphicon glyphicon-thumbs-up"></span></a></form>&nbsp;&nbsp;&nbsp;<form id="a<%= s4 %>"><input type="hidden" name ="id" value="<%= s4 %>"><input type="hidden" name="type" value="dislike"><span id="pp<%= s4 %>"><% out.println(rs.getString("dislike_val")); %></span> <a title='dislike' id="dislike" style="cursor:pointer;" onclick="dislikeval(<%= s4 %>)"><span class="glyphicon glyphicon-thumbs-down"></span></a></form>
                                </footer>
                            </blockquote>
                                
                        </div>
                         </div>
                </div>
                
                <%}while(rs.next()); %> 
                <%}
                else{
                    out.println("no trending Questions yet");
                }
                %>
                </div>
                <div class="col-md-4">
                    <% pageContext.include( red ); %>
                </div>
                 
            </div>
        </div>
            <script>
    
                    function likeval(x){
                    var str = "likes";
                    $.ajax({
                      url: 'like_count.jsp',
                      type: 'post',
                      data: $('form#'+x).serialize(),
                      success: function(data){
                            $("#cc"+x).html(data);
                      }
                   });
                }
                function dislikeval(x){
                    var str = "likes";
                    $.ajax({
                      url: 'dislike_count.jsp',
                      type: 'post',
                      data: $('form#a'+x).serialize(),
                      success: function(data){
                            $("#pp"+x).html(data);
                      }
                   });
                }
                

                </script>
<!--            <div align="center">
            <br><br><br><br>
            <a href="#loginScreen" class="button">Click here to Log In</a> 
        </div> -->
        
    <%@include file="footer.jsp" %>
</body>
</html>
