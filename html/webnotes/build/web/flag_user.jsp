<%-- 
    Document   : flag_user
    Created on : 3 Aug, 2016, 12:45:09 PM
    Author     : Kiran B
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int f = 0;
    dbclass ob = new dbclass();
    Statement st = ob.con.createStatement();
    Statement st2 = ob.con.createStatement();
    String s = request.getParameter("id");
    String username = (String)session.getAttribute("uname");
    String email = (String)session.getAttribute("email");
    ResultSet rs = st.executeQuery("Select * from user_details where u_id = (select u_id from answer where ans_id = '"+s+"')");
    rs.next();
    ResultSet rs2 = st2.executeQuery("select * from flag where flagby_user = '"+username+"'");
    if(username.equals(rs.getString("username")))
        out.println("No self flag");
    else{
        while(rs2.next()){
            if(rs2.getString("flagged_user").equals(rs.getString("username"))){
                out.println("Already flagged by you");
                f=1;
                break;
            }
        }
        if(f == 0){
            st.executeUpdate("insert into flag (flagged_user,flagby_user,flaggeduser_mail,flagbyuser_mail) values ('"+rs.getString("username")+"','"+username+"','"+rs.getString("email")+"','"+email+"')");
            out.println("flagged");
        }
    }
%>