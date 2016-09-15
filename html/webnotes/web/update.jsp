<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="db.jsp" %>
        <%
            String ss = (String)session.getAttribute("id");
            
            String na=request.getParameter("name");
            String pno=request.getParameter("phno");
            String mail=request.getParameter("email");
            String adr=request.getParameter("address");
            String id = request.getParameter("username");
            String pw = request.getParameter("password");
            out.println(na);
            st.executeUpdate("update user_details SET name='"+na+"',phno='"+pno+"',email='"+mail+"',address='"+adr+"',username='"+id+"',password='"+pw+"' where u_id='"+ss+"'");
            
        %>

