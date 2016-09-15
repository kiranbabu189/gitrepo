<%-- 
    Document   : insert_question
    Created on : 6 Jun, 2016, 2:52:16 PM
    Author     : Kiran B
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="db.jsp" %> 
        <%
            try{
            String qhead = request.getParameter("qhead");
//            String sam = "not";
            String qcont = request.getParameter("qcont");
            String pg = request.getParameter("dtype");
            String quser = (String)session.getAttribute("uname");
            String uid = (String)session.getAttribute("id");
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar cal = Calendar.getInstance();
    //out.println(dateFormat.format(cal.getTime())+"<br>");
            String date = dateFormat.format(cal.getTime());
            st.executeUpdate("insert into keyphrase (description,question,u_id,domain_name,post_date) values('"+qcont+"','"+qhead+"','"+uid+"','"+pg+"','"+date+"')");
            %><script>alert("question asked");</script>
            <% response.sendRedirect("domains.jsp");
            }catch(Exception e){
                %><script>alert("PLEASE SIGN IN"); window.location.href = "signin.html";</script><%
            }
        %>
    </body>
</html>
