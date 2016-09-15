<%-- 
    Document   : advisor
    Created on : 26 Aug, 2016, 1:21:30 PM
    Author     : Kiran B
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advisor Search</title>
  <!--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
  <!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
  
      <style>
        body,html {
                background-image:url(images/3840x2400.jpg) ;
            }
            .pad{
                padding-top: 6%;
            }
            .modal-dialog{
                padding-right: 0px;
            }
    </style>
  </head>

    <script src="js/jquery-2.1.4.min.js"></script>
    <body>
        <%@ include file="header.jsp" %>
	<div class="row">
            <div class="container-fluid pad">
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-12">
                            <form id="search" method="post" action="cleanWord">
                                <div class="srch" id="imaginary_container" style=""> 
                                    <div class="input-group stylish-input-group">
                                        <input type="text" name="question" class="form-control"  placeholder="Search" style="">
                                        <span class="input-group-addon">
                                            <button type="submit">
                                                <i class="glyphicon glyphicon-search"></i>
                                            </button>  
                                        </span>
                                    </div>    
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="container-fluid">
                                <% if(session.getAttribute("advisor1") != null){ %>
                                    <div class="row">
                                        <div class="col-md-offset-3  col-md-9">
                                            <h3>Possible Advisors for <%= (String)session.getAttribute("question")%></h3>
                                        </div>
                                    </div><br>
                                <%
                                    dbclass db = new dbclass();
                                    Statement st = db.con.createStatement();
                                    ResultSet rs ;
                                    String[] ids = new String[3];
                                    ids[0] = (String)session.getAttribute("advisor1");
                                    ids[1] = (String)session.getAttribute("advisor2");
                                    ids[2] = (String)session.getAttribute("advisor3");
                                    for(int y = 0 ; y < 1 ; y++ ){
                                        rs = st.executeQuery("select u.username,u.image,t.title,t.rating from user_details u, recordhistory t where u.u_id = (select u_id from recordhistory where id = '"+ids[y]+"') and t.id = '"+ids[y]+"'");
                                        while(rs.next()){ %>
                                            <div class="col-md-7">
                                                <div class="well">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <img src="upload/<%= rs.getString("image") %>" width="50" height="60">
                                                        </div>
                                                        <div class="col-md-8">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    Name :  <%= rs.getString("u.username") %>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                Rating : <%= rs.getString("t.rating") %>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row"><br>
                                                        <div class="col-md-12">
                                                            <button type="button" class="btn btn-info" style="width: inherit" onclick="document.getElementById(<%= ids[y] %>).style.display='block';">MEET</button>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row" id="<%= ids[y] %>" style="display:none">
                                                        <div class="col-md-12">
                                                        <form id=inreq"<%= ids[y] %>" action="inreq" method="post"> 
                                                            <input type="hidden" name="tusername" value="<%= rs.getString("u.username") %>">
                                                            <input type="hidden" name="rusername" value="<%= (String)session.getAttribute("uname") %>">
                                                            <input type="hidden" name="qua" value="<%= (String)session.getAttribute("question") %>">
                                                            <input type="hidden" name="rhid" value="<%= ids[y] %>">
                                                            
                                                            day<select name="day">
                                                                <% for(int day = 1 ; day <= 31 ; day++) { %>
                                                                <option value="<%= day %>"><%= day %></option>
                                                                <% } %>
                                                            </select>
                                                            month<select name="month">
                                                                <% for(int month = 1 ; month <= 12 ; month++) { %>
                                                                <option value="<%= month %>"><%= month %></option>
                                                                <%}%>
                                                            </select>
                                                            year<select name="year">
                                                                <option value="2016">2016</option>
                                                                <option value="2017">2017</option>
                                                                <option value="2018">2018</option>
                                                            </select>
                                                            <br>
                                                            <br>
                                                            <div class='row'>
                                                                <div class='col-md-12'>
                                                                    <button type='submit'  style='width:inherit' class='btn btn-send'>Request</button><button type='button' style='width:inherit' class='btn btn-send' onclick="document.getElementById(<%= ids[y] %>).style.display='none';">Cancel</button>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </form> 
                                                                
                                                    </div>
                                                </div>
                                            </div>    
                                      <%}
                                    }%>
                           
                <%}
//session.invalidate();
            %>
             </div>
                        </div>
                    
                    </div>
            </div>       
            <div class="col-md-3">
                    <div class="well">
                        <h4>Top Advisors</h4><br>
                        <%
                            dbclass db1 = new dbclass();
                            Statement st1 = db1.con.createStatement();
                            ResultSet rs1 ;
                            rs1 = st1.executeQuery("select u.username,u.image,t.u_id,t.rating from user_details u join recordhistory t on u.u_id = t.u_id order by t.rating desc limit 2");
                            while(rs1.next()){
                                %> <div class="row">
                                    <div class="col-md-2">
                                        <img src="upload/<%= rs1.getString("u.image") %>"  height="40" width="30">
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <span class="glyphicon glyphicon-user"></span> <%= rs1.getString("u.username")%>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <span class="glyphicon glyphicon-star"></span> <%= rs1.getString("t.rating") %>
                                            </div>
                                        </div>
                                    </div>
                                    </div><br>
                                        <%
                                            
                            }
                        %>
                    </div>
                </div>
            </div>
	</div>
        <script>
//            function sendreq(x){
//               alert(x);
//            $("form#inreq"+x).submit(function(e){
//                e.preventDefault();
//                
//                $.ajax({
//                    url: "inreq.jsp",
//                    type: 'post',
//                    data: $('form#inreq'+x).serialize(),
//                    success: function(data){
//                        alert(data);
//                    },
//                    error: function(data){
//                        alert(data);
//                    }
//                });
//            });
//        }
        </script>
    </body>
</html>
