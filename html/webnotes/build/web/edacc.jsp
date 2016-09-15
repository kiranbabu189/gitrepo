<%-- 
    Document   : edrej
    Created on : 1 Sep, 2016, 8:33:44 AM
    Author     : Kiran B
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String reqid = request.getParameter("reqid");
    out.println(reqid);
    String acc = "accept";
    dbclass db = new dbclass();
    ResultSet rs ;
    Statement st = db.con.createStatement();
    st.executeUpdate("update schedule set accept = '"+acc+"' where id = '"+reqid+"'");
    
    
%>