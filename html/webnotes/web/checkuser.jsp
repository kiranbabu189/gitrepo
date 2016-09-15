<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
    String name = request.getParameter("usrnm");
    rs = st.executeQuery("select username from user_details");
    int flag = 0;
    while(rs.next()){
        if(name.equals(rs.getString("username")))
        {    
            flag = 1;
            break;
        }
    }
    if(flag == 1){
        out.print("old");
    }
    else{
        out.print("new");
    }
%>