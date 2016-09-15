<%-- 
    Document   : gallery
    Created on : 3 Jun, 2016, 1:16:06 PM
    Author     : Kiran B
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gallery</title>
        <style>
            body {
                /*position: absolute;*/
                background-image:url(images/3840x2400.jpg);
                height: 100%;
                width:100%;
            }
            ul{
                list-style-type: none;
                float:left;
            }
            .ds{
                display: run-in;
            }
            #img{
                height: 50px;
                width:50px;
            }
            .pd{
                margin-top: 50px;
            }
        </style>
    </head>
    <%@include file="header.jsp" %>
    <body>
        
        <%--<%@include file="db.jsp" %>--%>
        <div class="container pd">
            <div class="row">
                <div class="col-md-12">
                   <div class="form-group">
                        <label for="usr">Name:</label>
                        <input type="text" class="form-control" id="usr" placeholder="Enter username" name="username">
                    </div>
                    <div class="row">
                        <div class="result"></div>
                    </div>
                </div>
            </div>
            <div class="row">
            <%
                dbclass db = new dbclass();
                Statement st = db.con.createStatement();
                Statement st3 = db.con.createStatement();
                Statement st1 = db.con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("Select * from user_details");
                while(rs.next()){
            %>
                    <div class="col-md-3">
                        <div class="well">
                            <% String nm = rs.getString(4);
                            ResultSet rs2 ;
                            ResultSet rs3 ;
                            String disp = null;
                            int g,c = 0;
                            if(nm == null){nm="prof.jpg";}    
                                String user = rs.getString("u_id");    
                                rs3 = st3.executeQuery("select d_name from domain");
                                while(rs3.next()){
                                    String d_name = rs3.getString("d_name");
                                    rs2 = st1.executeQuery("select count(domain_name) as c_user from keyphrase where u_id = '"+user+"' and domain_name = '"+d_name+"'");
                                    while(rs2.next()){
                                        g = Integer.parseInt(rs2.getString("c_user"));
                                        if(g>c)
                                            disp = d_name;
//                                            out.println("User Id: "+user+" Domain: "+d_name+" Count: "+rs2.getString("c_user")+"<br>");
                                    }
                                }
                            %>
                            <h3 class="title"><% out.println(rs.getString(2)); %><img src="upload/<%= nm %>" id="img"></h3>
                            <blockquote>
                                From <% out.println(rs.getString(10));%>| Popular in <%= disp %>
                                <footer><% out.println(rs.getString(5)); %></footer>
                            </blockquote>
                        </div>
                    </div>
            <%
                }
            %>
        </div>
        </div>
        <!--</div>-->
        <script>
            $(document).ready(function(){
                $('#usr').keyup(function(){
                   var txt = $(this).val();
                   if(txt != ''){
                       $.ajax({
                           url:"fetch.jsp",
                           method:'post',
                           data:{search:txt},
                           dataType: "text",
                           success: function(data){
                               $('.result').html(data);
                           }
                       });
                   }else{
                       $('.result').html('');
                       
                   }
                });
            })
        </script>
    </body>
    <%@include file="footer.jsp" %>
</html>
