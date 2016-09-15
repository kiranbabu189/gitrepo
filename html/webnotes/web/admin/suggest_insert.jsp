<%-- 
    Document   : suggest_insert
    Created on : 8 Aug, 2016, 1:49:14 PM
    Author     : Kiran B
--%>

<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            dbclass db = new dbclass();
            Statement st = db.con.createStatement();
            String first = request.getParameter("name");
            String second = request.getParameter("surname");
            String fullname = first +" "+ second;
            String mail = request.getParameter("email");
            String suggest = request.getParameter("message");
            st.executeUpdate("insert into suggest (name,mail,suggest) values ('"+fullname+"','"+mail+"','"+suggest+"')");
        %>    
        <script>
                alert("Thank you for your Valuable Suggestion");
                response.sendRedirect("index.jsp");
        </script>
        
    </body>
</html>
