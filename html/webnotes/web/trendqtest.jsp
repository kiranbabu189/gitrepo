<%-- 
    Document   : trendqs
    Created on : 6 Jun, 2016, 6:58:39 PM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">-->
        <script src="js/jquery-2.1.4.min.js"></script>
        <link href="css/trans_div.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/boot.js"></script>
        <script src="js/boot2.js"></script>
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
                margin:0;
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
            #img{
        width:248px;
        height:235px;
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
//                Statement st2= con.createStatement();
                String domain = request.getParameter("pg");
                String red = domain+"_updates.jsp";
                //out.println(red);
//                ResultSet rs2 = st2.executeQuery("select count(id) as r_count from keyphrase");
//                rs2.next();
//                out.println(rs2.getString("r_count"));
                rs = st.executeQuery("select b.username,b.image,a.u_id,a.question,a.description,a.id,a.like_val,a.dislike_val from keyphrase a, user_details b where a.u_id = b.u_id and a.domain_name='"+domain+"'"); 
                if(rs.next()){
               // out.println(rs.getString("r_count"));    
                do{
                    
                    String s1 = rs.getString("username");
                    String s2 = rs.getString("description");
                    String s3 = rs.getString("question");
                    String s4 = rs.getString("id");
                    String s5 = rs.getString("image");
                    String s6 = rs.getString("u_id");
                %>
                <div class="row">
                     <div class="col-md-12 " id="content">
                       <div class="well">
                           
                            <h4><%= s3 %></h4>
                            <blockquote>
                                <div><%= s2  %><a class="helpicon" href="#"></a></div>
                                <footer>answered by <a href="#popup1" data-toggle="modal" data-target="#mo<%= s4 %>" onclick="callmodal(<%= s4 %>)"><%= s1 %></a><br>
                                    <form id="<%= s4 %>"><input type="hidden" name ="id" value="<%= s4 %>"> <input type="hidden" name="type" value="like">please rate -- <span id="cc<%= s4 %>"><% out.println(rs.getString("like_val")); %></span>&nbsp; <a title='like' id="<%= s4 %>" style="cursor:pointer;" onclick="likeval(<%= s4 %>)"><span  class="glyphicon glyphicon-thumbs-up"></span></a></form>
                                    &nbsp;&nbsp;&nbsp;<form id="a<%= s4 %>"><input type="hidden" name ="id" value="<%= s4 %>"><input type="hidden" name="type" value="dislike"><span id="pp<%= s4 %>"><% out.println(rs.getString("dislike_val")); %></span> <a title='dislike' id="dislike" style="cursor:pointer;" onclick="dislikeval(<%= s4 %>)"><span class="glyphicon glyphicon-thumbs-down"></span></a></form>
                                    &nbsp;&nbsp;&nbsp;<form id="b<%= s4 %>"><input type="hidden" name ="id" value="<%= s4 %>"><a title="bookmark" id="bookmark" style="cursor:pointer;" onclick="bookmark(<%= s4 %>)"><span  class="glyphicon glyphicon-tags" style=""></span><span id="dd<%= s4 %>"></span></a></form>
                                    &nbsp;&nbsp;&nbsp;<a title="comment" id="q<%= s4 %>" onclick="txt_disp(<%= s4 %>)"><span  class="glyphicon glyphicon-comment" style="cursor:pointer;"></span></a>  
                                </footer>
                            </blockquote>
                            <textarea id="qa<%= s4 %>" style="width:100%; display:none;"></textarea>    
                        </div>
                         </div>
                </div>
                
                          

                          <!-- Modal -->
                          <div class="modal fade" id="mo<%= s4 %>" role="dialog">
                            <div class="modal-dialog">

                              <!-- Modal content-->
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" onclick="window.location.reload();">&times;</button>
                                  <h4 class="modal-title"><img src="upload/<%= s5 %>" class="img-rounded" id="img" ><%= s1 %></h4>
                                </div>
                                <div class="modal-body">
                                    <input type="hidden" name="modval" id="modval">
                                    <%
//                                        String id = request.getParameter("modval"); 
//                                        if(id != null){
                                        ResultSet rs2 ;
                                        ResultSet rs3 ;
                                        int g,c = 0;   
                                        String disp = null;
//                                        String id = request.getParameter("modval"); 
                                        rs3 = st3.executeQuery("select d_name from domain");
                                        while(rs3.next()){
                                        String d_name = rs3.getString("d_name");
                                        rs2 = st1.executeQuery("select count(domain_name) as c_user from keyphrase where u_id = '"+s6+"' and domain_name = '"+d_name+"'");
                                        while(rs2.next()){
                                            g = Integer.parseInt(rs2.getString("c_user"));
                                            %><p class="text-success"><em><%= g %> post's in <%= d_name %></em></p><%
                                            if(g > c)
                                                disp = d_name;
                                        }
                                    }
                                
                                    %>
                                  <p><h4>popular in <%= disp %></h4></p>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="window.location.reload();">Close</button>
                                </div>
                              </div>
                            </div>
                          </div>
                <%}while(rs.next()); %> 
                <%}
                else{
                    out.println("<div class='alert alert-danger'> No Trending Questions Yet </div>");
                }
                %>
                </div>
                <div class="col-md-4">
                    <% pageContext.include( red ); %>
                </div>
                 
            </div>
        </div>
                <script>
//                $(document).ready(function(){
                function likeval(x){
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
                    $.ajax({
                      url: 'dislike_count.jsp',
                      type: 'post',
                      data: $('form#a'+x).serialize(),
                      success: function(data){
                            $("#pp"+x).html(data);
                      }
                   });
                }
                function bookmark(x){
                    $.ajax({
                      url: 'bookmark.jsp',
                      type: 'post',
                      data: $('form#b'+x).serialize(),
                      success: function(data){
                            $("#dd"+x).html(data);
                            //$("#dd"+x).css({'color':'red'});
                      },
                      error: function(data){
                          console.log("sdfsdf");
                      }
                   });
                   
                }
                function txt_disp(x){
                    $("#qa"+x).slideToggle();
                }
                function callmodal(x){
                    document.getElementById("modval").value = x;
                }
            </script>
            
    <%@include file="footer.jsp" %>
</body>
</html>
