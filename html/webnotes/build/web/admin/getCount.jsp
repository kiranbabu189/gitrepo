<%-- 
    Document   : getCount
    Created on : 12 Aug, 2016, 10:08:16 PM
    Author     : Kiran B
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbclass ob = new dbclass();
    Statement st = ob.con.createStatement();
    ResultSet rs;
    ResultSet rs2;
    String id = request.getParameter("countid");
    rs = st.executeQuery("select * from flag where id = '"+id+"'");
    rs.next();
    rs2 = st.executeQuery("select count(id) as countval from flag where flagged_user = '"+rs.getString("flagged_user")+"'");
    rs2.next();
    out.println("<span class='label label-info'>"+rs2.getString("countval")+"</span>");
%>