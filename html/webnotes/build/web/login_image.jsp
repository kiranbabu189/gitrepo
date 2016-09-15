<%-- 
    Document   : login_image
    Created on : 2 Jun, 2016, 10:14:31 PM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@ include file="db.jsp" %>
        <%
            String username = request.getParameter("name");
//                    request.getParameter("name");
            rs = st.executeQuery("select * from user_details where username='"+username+"'");
            rs.next();
            if(rs.getString(4) != null){
            out.println(rs.getString(4));
            }
            else
            {
                out.println("null");
            }
        %>

