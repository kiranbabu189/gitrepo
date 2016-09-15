<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='db.jsp' %>
<%
    String uid = (String)session.getAttribute("id");
    String qid = request.getParameter("q_id");
    String domain = request.getParameter("domain");
    String answer = request.getParameter("answer");

    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Calendar cal = Calendar.getInstance();
    //out.println(dateFormat.format(cal.getTime())+"<br>");
    String date = dateFormat.format(cal.getTime());
    st.executeUpdate("insert into answer (q_id,answer,u_id,post_date,domain_name) values ('"+qid+"','"+answer+"','"+uid+"','"+date+"','"+domain+"')");
    out.println("success");
%>