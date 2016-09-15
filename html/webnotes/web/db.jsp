<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");  
  
Connection con =DriverManager.getConnection(  
"jdbc:mysql://localhost/webnotes","root","");

Statement st= con.createStatement();
Statement st1= con.createStatement();
Statement st3= con.createStatement();
ResultSet rs ;
%>

