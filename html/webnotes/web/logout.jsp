<%-- 
    Document   : logout
    Created on : 2 Jun, 2016, 9:41:47 AM
    Author     : Kiran B
--%>

<%@page import="dbpack.dbclass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
////        HttpSession session = request.getSession();
//        String sin = (String)session.getAttribute("sin");
//        String uname = (String)session.getAttribute("id");
//        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
//        Date date1 = new Date();
//        String dateInString = sdf.format(date1);
//        Date date = (Date) sdf.parse(dateInString);
//        String sout = date.getTime()+"000";
//        out.println(sin+"<br>"+sout+"<br>");
//        Class.forName("org.sqlite.JDBC");
//        String connection = "jdbc:sqlite:C:\\Users\\Kiran B\\AppData\\Roaming\\Mozilla\\Firefox\\Profiles\\ba6pn6fc.default\\places.sqlite";
//        Connection conn1 = DriverManager.getConnection(connection);
//        Statement stat = conn1.createStatement();
//        ResultSet rs = stat.executeQuery("select * from moz_places where last_visit_date between '"+sin+"' and '"+sout+"' and title not null and url not like 'http://localhost%'");
//        dbclass db = new dbclass();
//        Statement st = db.con.createStatement();
//        while(rs.next()){  
//            st.executeUpdate("insert into recordhistory (url,title,u_id) values ('"+rs.getString("url").replace("'", " ")+"','"+rs.getString("title").replace("'", " ")+"','"+uname+"')");
//        }
//        response.sendRedirect("index.jsp");
session.invalidate();
              response.sendRedirect("index.jsp");
        %>
    </body>
</html>
