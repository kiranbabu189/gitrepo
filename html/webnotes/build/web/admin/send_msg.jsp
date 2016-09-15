<%-- 
    Document   : send_msg
    Created on : 10 Aug, 2016, 8:17:51 AM
    Author     : Kiran B
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dbpack.dbclass"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    dbclass ob = new  dbclass();
    Statement st = ob.con.createStatement();
    String name = request.getParameter("names");
    String msg = request.getParameter("msg");
    String arr[] = name.split(",");
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Calendar cal = Calendar.getInstance();
    String date = dateFormat.format(cal.getTime());
    for(int i = 0 ; i < arr.length; i++){
        arr[i] = arr[i].replaceAll(" ","");
        st.executeUpdate("insert into admin_msg (msg,usr_nm,date) values ('"+msg+"','"+arr[i]+"','"+date+"') ");
    }
%>
