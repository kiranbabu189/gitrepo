<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='db.jsp' %>
<%
    String content = request.getParameter("info");
    String doc_id = request.getParameter("doc_id");
    st.executeUpdate("Update answer set answer = '"+content+"' where ans_id = '"+doc_id+"'");
%>

