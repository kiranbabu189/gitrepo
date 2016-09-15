<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='db.jsp' %>
<% 
    String doc_id = request.getParameter("id"); 
    String u_id = (String)session.getAttribute("id");
    String empty = null;
    rs = st.executeQuery("select * from like_dislike_table where u_id = '"+u_id+"' and dislike_doc = '"+doc_id+"'");
    if( rs.next() ){
        rs = st.executeQuery("select dislike_val from answer where ans_id = '"+doc_id+"'");
        rs.next();
        out.println("You and "+rs.getString("dislike_Val")+" others disliked");
    }else{
        rs = st.executeQuery("select * from like_dislike_table where u_id = '"+u_id+"' and like_doc = '"+doc_id+"'");
        if( rs.next() ){
            String b = rs.getString("ld_id");
            %><script> console.log(<%= u_id %>); </script><%
            st.executeUpdate("update like_dislike_table set like_doc = '"+null+"' , dislike_doc = '"+doc_id+"' where ld_id = '"+b+"'");
            st.executeUpdate("update answer set dislike_val = dislike_val + 1 where ans_id = '"+doc_id+"'");
            st.executeUpdate("update answer set like_val = like_val - 1 where ans_id = '"+doc_id+"'");
            rs = st.executeQuery("select dislike_val from answer where ans_id = '"+doc_id+"'");
            rs.next();
            out.println(rs.getString("dislike_Val"));
        }else{
        st.executeUpdate("insert into like_dislike_table (u_id,dislike_doc) values ('"+u_id+"','"+doc_id+"')");
        st.executeUpdate("update answer set dislike_val = dislike_val + 1 where ans_id = '"+doc_id+"'");
        rs = st.executeQuery("select dislike_val from answer where ans_id = '"+doc_id+"'");
        rs.next();
        out.println(rs.getString("dislike_Val"));
        }
    }
%>
