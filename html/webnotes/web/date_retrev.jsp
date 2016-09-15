<%-- 
    Document   : date_retrev
    Created on : 11 Jul, 2016, 1:39:08 PM
    Author     : Kiran B
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file='db.jsp' %>
        
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
       <%@include file='header.jsp' %>
        <%
//DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//Calendar cal = Calendar.getInstance();
//out.println(dateFormat.format(cal.getTime())+"<br>");
//String s = dateFormat.format(cal.getTime());
// cal.add(Calendar.DATE,-2);
// out.println(dateFormat.format(cal.getTime()));
//            rs = st.executeQuery("SELECT * FROM keyphrase WHERE post_date BETWEEN '"+s+"' AND '2016-07-16 23:13:05'");
//            while(rs.next()){
//                out.println(rs.getString(1));
//            }
//    ResultSet rs2 ;
//    ResultSet rs3 ;
//    int g,c = 0;
//    rs3 = st3.executeQuery("select u_id from user_details");
//    while(rs3.next()){    
//    String user = rs3.getString("u_id");    
//    rs = st.executeQuery("select d_name from domain");
//    while(rs.next()){
//        String d_name = rs.getString("d_name");
//        rs2 = st1.executeQuery("select count(domain_name) as c_user from keyphrase where u_id = '"+user+"' and domain_name = '"+d_name+"'");
//        while(rs2.next()){
//            g = Integer.parseInt(rs2.getString("c_user"));
//            if(g>c)
//                out.println("User Id: "+user+" Domain: "+d_name+" Count: "+rs2.getString("c_user")+"<br>");
//        }
//    }
//    }
        %>

<!-- Modal -->
<div class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
    </body>
</html>
