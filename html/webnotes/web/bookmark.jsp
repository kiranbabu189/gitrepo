<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%
    String doc_id = request.getParameter("id"); 
    String u_id = (String)session.getAttribute("id");
    rs = st.executeQuery("select * from bookmark_doc where u_id = '"+u_id+"' and doc_id = '"+doc_id+"'");
    if( rs.next() ){
        out.println("Already Bookmarked");
    }else{
    st.executeUpdate("insert into bookmark_doc (u_id,doc_id) values ('"+u_id+"','"+doc_id+"')"); 
    out.println("bookmarked");
    }    
//    <!--<script>console.log("sdfsdf");</script>-->

%>