<%-- 
    Document   : fetch
    Created on : 3 Sep, 2016, 8:33:25 AM
    Author     : Kiran B
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
dbclass db = new dbclass();
Statement st = db.con.createStatement();
ResultSet rs;
String output;
String l = request.getParameter("search");
rs = st.executeQuery("select * from user_details where username LIKE '%"+l+"%'");
if(rs.next()){
   %><div class='col-md-3'>
       <div class='well'>
           <h3 class='title'> 
               <%= rs.getString(2) %>
               <img src='upload/<%= rs.getString(4) %>' id='img'>
           </h3>
                <blockquote>
                   From <%= rs.getString(10) %>| Popular in <footer> <%= rs.getString(5) %></footer>
                </blockquote>
       </div>
   </div>
                <%
}else{
    output = "NO RESULT FOUND";
}
%>
