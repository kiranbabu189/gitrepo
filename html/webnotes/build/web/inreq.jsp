<%-- 
    Document   : inreq
    Created on : 31 Aug, 2016, 8:20:46 PM
    Author     : Kiran B
--%>

<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%
dbclass db = new dbclass();
            Statement st = db.con.createStatement();
            String teacher = request.getParameter("tusername");
            String student = request.getParameter("rusername");
            String question = request.getParameter("qua");
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            String rhid = request.getParameter("rhid");
            String fd = year+"-"+month+"-"+day ;
            st.executeUpdate("insert into schedule (requser_id,sayuser_id,time,title,rechis) values ('"+student+"','"+teacher+"','"+fd+"','"+question+"','"+rhid+"')");
            out.print("send");
            
//            System.out.print("asd");
 %>
