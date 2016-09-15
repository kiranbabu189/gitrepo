
        <%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </head>
    <body>
        
        <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
        <%@ page import ="java.util.Date" %>
        <%@ page import="javax.servlet.*,java.text.*" %>
        <%
            String na = request.getParameter("name");
            String sex = request.getParameter("sex");
            String age = request.getParameter("age");
            String pno = request.getParameter("phno");
            String mail = request.getParameter("email");
            String adr = request.getParameter("address");
            String usrnm = request.getParameter("usrnm");
            String country = request.getParameter("country");
            String pwd = request.getParameter("pwd");
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar cal = Calendar.getInstance();
    //out.println(dateFormat.format(cal.getTime())+"<br>");
            String date = dateFormat.format(cal.getTime());
Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost/webnotes","root","");

Statement st = con.createStatement(); 
st.executeUpdate("insert into user_details (name,sex,email,address,phno,username,password,country,Join_date) values ('"+na+"','"+sex+"','"+mail+"','"+adr+"','"+pno+"','"+usrnm+"','"+pwd+"','"+country+"','"+date+"')"); 
st.executeUpdate("insert into admin_update (new_user) values ('"+usrnm+"')");
%>
<div class="alert alert-success">
    <strong>Registered successfully </strong> 
    <script>alert("Registered successfully"); window.location.href="signin.html"</script>
  </div>
    </body>
</html>
