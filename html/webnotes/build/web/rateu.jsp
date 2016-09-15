<%-- 
    Document   : rateu
    Created on : 1 Sep, 2016, 10:52:07 AM
    Author     : Kiran B
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    dbclass db = new dbclass();
    ResultSet rs;
    Statement st = db.con.createStatement();
    String rid = request.getParameter("rec");
    int srate = Integer.parseInt(request.getParameter("rate"));
    out.println(rid);
    out.println(srate);
    rs = st.executeQuery("select rating from recordhistory where id = '"+rid+"'");
    rs.next();
    int rate =  Integer.parseInt(rs.getString("rating"));
    int tot;
    tot = srate + rate;
    rs.close();
    st.executeUpdate("update recordhistory set rating = '"+tot+"' where id = '"+rid+"'");
    String id = (String)session.getAttribute("uname");
    st.executeUpdate("update schedule set status = '1' where requser_id = '"+id+"'");
    
%>
