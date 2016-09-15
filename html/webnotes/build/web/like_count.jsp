<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='db.jsp' %>
<% 
    String doc_id = request.getParameter("id"); 
    String u_id = (String)session.getAttribute("id");
    rs = st.executeQuery("select * from like_dislike_table where u_id = '"+u_id+"' and like_doc = '"+doc_id+"'");
    if( rs.next() ){
        
        rs = st.executeQuery("select like_val from answer where ans_id = '"+doc_id+"'");
        rs.next();
        out.println("You and "+rs.getString("like_Val")+" others liked");
       
    }
   else{
        rs = st.executeQuery("select * from like_dislike_table where u_id = '"+u_id+"' and dislike_doc = '"+doc_id+"'");
        if( rs.next() ){
            String b = rs.getString("ld_id");
            %><script> console.log(<%= u_id %>); </script><%
            st.executeUpdate("update like_dislike_table set dislike_doc = '"+null+"' , like_doc = '"+doc_id+"' where ld_id = '"+b+"'");
            st.executeUpdate("update answer set dislike_val = dislike_val - 1 where ans_id = '"+doc_id+"'");
            st.executeUpdate("update answer set like_val = like_val + 1 where ans_id = '"+doc_id+"'");
            rs = st.executeQuery("select like_val from answer where ans_id = '"+doc_id+"'");
            rs.next();
            out.println(rs.getString("like_Val"));
        }else{
        st.executeUpdate("insert into like_dislike_table (u_id,like_doc) values ('"+u_id+"','"+doc_id+"')");
        st.executeUpdate("update answer set like_val = like_val + 1 where ans_id = '"+doc_id+"'");
        rs = st.executeQuery("select like_val from answer where ans_id = '"+doc_id+"'");
        rs.next();
        out.println(rs.getString("like_Val"));
    }
}
    
%>

