<%-- 
    Document   : dup_rem
    Created on : 8 Aug, 2016, 2:24:02 PM
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
    </head>
    <body>
         <%
            dbclass ob = new dbclass();
            Statement st = ob.con.createStatement();
            st.executeUpdate("DELETE n1 FROM stopwords n1, stopwords n2 WHERE n1.id > n2.id AND n1.swords = n2.swords");
            
        %>
    </body>
</html>
