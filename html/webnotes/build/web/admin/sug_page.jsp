<%-- 
    Document   : sug_page
    Created on : 8 Aug, 2016, 2:02:18 PM
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
        <title>JSP Page</title>
        <style>
            .cont {
    overflow: hidden;
    width: 300px;  /* or other */
    -o-text-overflow: ellipsis;   
       text-overflow: ellipsis;
    white-space: nowrap;
}
            
        </style>
            <script>
        function c_div(x){
            document.getElementById(x).style.width = "1000px";
            document.getElementById(x).style.overflow = 'scroll' ;
            console.log("asdas");
        }
    </script>
    </head>
    <body>
         <%
            dbclass ob = new dbclass();
            Statement st = ob.con.createStatement();
            ResultSet rs = st.executeQuery("select * from suggest");
        %>
        <div class="container">
  <h2>Suggestions</h2>
  <p>Suggestions Details</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>User</th>
        <th>Mail-Id</th>
        <th>Suggestion</th>
      </tr>
    </thead>
    <tbody>
        <% while(rs.next()){%>
      <tr>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("mail") %></td>
        <td><div class = "cont" id="<%=rs.getString("id") %>" onclick="c_div(<%=rs.getString("id") %>)" > <%= rs.getString("suggest") %></div></td>
      </tr>
      <%}%>
    </tbody>
  </table>
    </div>
    </body>

</html>
