<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<% 
    String name = request.getParameter("name");
    String password = request.getParameter("password");
//    String name="kiranb";
//    String password="kiran";
    String pg = request.getParameter("page");
    rs=st.executeQuery("select username,name,u_id,password,email from user_details where username='"+name+"' OR password='"+password+"'");
    try{
    rs.next();
    String nm = rs.getString("name");
    String username = rs.getString("username");
    String pass = rs.getString("password");
    String email = rs.getString("email");
    if(name.equals(username) && pass.equals(password) ){
         String nm1 = rs.getString("u_id");
        session.setAttribute("user",nm);
        session.setAttribute("id",nm1);
        session.setAttribute("uname",username);
        session.setAttribute("email",email);
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        Date date1 = new Date();
        String dateInString = sdf.format(date1);
        Date date = sdf.parse(dateInString);
        String sin = date.getTime()+"000";
        session.setAttribute("sin",sin);
        if(pg != null){ response.sendRedirect("question.jsp"); }
        else{
            if(nm.equals("admin") && pass.equals("admin123")){
                out.println("Admin");
            }
            else{
                out.println("Success");
                
            }
        }
    }
    else if(!name.equals(username)){
        out.print("username");
    }
    else if( !pass.equals(password)){
        out.print("password");
    }
    }catch(java.sql.SQLException e){out.println("both");}
%>



