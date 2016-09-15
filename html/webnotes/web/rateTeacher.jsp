<%-- 
    Document   : rateTeacher
    Created on : 1 Sep, 2016, 10:29:38 AM
    Author     : Kiran B
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>

function changeme(n,x){
    var i,check;
    check = x.src;
    var arr = new Array();
    arr = ["img1","img2","img3","img4","img5"];
//    alert(check);
    if(check == "http://localhost:8080/webnotes/admin/images/Cool_Smiley_Face.png"){
        for(i = n ; i < 5 ; i++){
            document.getElementById(arr[i]).src = "images/slika_8.png";
        }
        document.getElementById('rate').value = n;
    }
    else{
        for(i=0 ; i < n ; i++){
            document.getElementById(arr[i]).src = "images/Cool_Smiley_Face.png";
        }
        document.getElementById('rate').value = n;
    }
}
function backto(){
    var arr = new Array();
    arr = ["img1","img2","img3","img4","img5"];
    for(i = 0 ; i < 5 ; i++){
            document.getElementById(arr[i]).src = "images/slika_8.png";
        }
}

  </script>
  <style>
      
            .img_size{
    width:60px;
    height:60px;
}
  </style>
      
</head>
<body>
<%
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Calendar cal = Calendar.getInstance();
                                //out.println(dateFormat.format(cal.getTime())+"<br>");
    String s1 = dateFormat.format(cal.getTime());
    dbclass ob = new dbclass();
    Statement st = ob.con.createStatement();
    String id = (String)session.getAttribute("uname");
    ResultSet rs;
    try{
    rs = st.executeQuery("select * from schedule where requser_id = '"+id+"' and time <= '"+s1+"' and  status = '0' and accept = 'accept'");
    if(rs.next()){
    String rcid = rs.getString("rechis"); 
%>
        <script>
        $(window).load(function(){
//            alert("asd");
        $('#myModal').modal('show');
    });
    </script><%
    }
rs.close();
%>
<div class="container">
<!--  <h2>Rate</h2>-->
  <!-- Trigger the modal with a button -->
  <!--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>-->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Rate</h4>
        </div>
        <div class="modal-body">
          <p>Please rate your last advisor</p>
          <form role="form" id="rateu" >
            <div class="form-group">
          	<img class="img_size" id="img1" onmouseover="changeme(1,this)" src="images/slika_8.png">
		<img class="img_size" id="img2" onmouseover="changeme(2,this)" src="images/slika_8.png">
		<img class="img_size" id="img3" onmouseover="changeme(3,this)" src="images/slika_8.png">
		<img class="img_size" id="img4" onmouseover="changeme(4,this)" src="images/slika_8.png">
		<img class="img_size" id="img5" onmouseover="changeme(5,this)" src="images/slika_8.png">
                <%
                    rs = st.executeQuery("select * from schedule where requser_id = '"+id+"' and time <= '"+s1+"' and  status = '0' ");
                    rs.next();
                %>
                <input type="hidden" id="rate" value="" name="rate"/>
                <input type="hidden" id="rec" value="<%= rs.getString("rechis") %>" name="rec"/>
            </div>    
            <div class="form-group">
                <button type="submit"  class="btn btn-default">Rate</button>
                <button type="reset" class="btn btn-default" onclick="backto(); ">Reset</button>
            </div>
            </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
  </div>
<script>
    $("form#rateu").submit(function(e){
        e.preventDefault();
        $.ajax({
            url: 'rateu.jsp',
            type:'post',
            data: $('form#rateu').serialize(),
            success: function(data){
                window.location="advisor.jsp";
            }
        })
    })
    
</script>
<%
}
catch(java.sql.SQLException e){
    response.sendRedirect("advisor.jsp");
}
%>
</body>
</html>