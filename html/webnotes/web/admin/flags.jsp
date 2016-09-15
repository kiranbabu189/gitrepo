<%-- 
    Document   : flags
    Created on : 3 Aug, 2016, 1:45:33 PM
    Author     : Kiran B
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--            <script src="js/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" href="css/bootstrapmodal.css">
    <script src="js/boot2.js"></script>-->
        <title>JSP Page</title>
    </head>
    <body>
        <%
            dbclass ob = new dbclass();
            Statement st = ob.con.createStatement();
            int i = 0 ;
            ResultSet rs = st.executeQuery("select * from flag");
        %>
        <div class="container">
  <h2>Flags</h2>
  <p>Flag Details</p>            
  <table class="table table-hover" id="reg">
    <thead>
      <tr>
        <th>Flaged User</th>
        <th>Flaged by User</th>
        <th><input type="checkbox" id="chkbox"  value="option1">&nbsp;&nbsp;Action </th>
      </tr>
    </thead>
    <tbody>
        <% while(rs.next()){%>
      <tr>
          <td><a data-toggle="tooltip" title="Click for Total flags" data-placement="left" onclick="getCount(<%= rs.getString("id") %>)" class="ot"><%= rs.getString("flagged_user") %></a><input type="hidden" id="countsend<%= rs.getString("id") %>" value="<%= rs.getString("id") %>" name="countid">&nbsp;&nbsp;<div style="display: inline-block;" id="count<%= rs.getString("id") %>"></div></td>
        <td><%= rs.getString("flagby_user") %></td>
        <td><input type="checkbox" class="chkbox"  id = "<%= i %>"></td>
      </tr>
      <%i++; }%>
    </tbody>
  </table>
    <div class="msg" style="display:none;">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" onclick="fillin()">Send Message</button>
        <button type="button" class="btn btn-warning">Block User</button>
        <button type="button" class="btn btn-danger">Delete User</button>
    </div>
        <div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Sent Mail</h4>
      </div>
      <div class="modal-body">
        <form role="form" id='msgform'>
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="text" class="form-control" id="email" name='names'>
            </div>
            <div class="form-group">
                <label for="pwd">Message:</label>
                <textarea class="form-control" id="txt" name='msg'></textarea>
            </div>
            <button type="submit" class="btn btn-default">Send</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
</div>
    </body>
     <script>
        $('.chkbox').change(function() {
            var isChecked =  $('input:checkbox').is(':checked');
            if(!isChecked)  
                $(".msg").hide();
            else
                $(".msg").show();
        });
        $("#chkbox").click(function(){
            $('input:checkbox').not(this).prop('checked', this.checked);
            if(this.checked)
                $(".msg").show();
            if(!this.checked)
                $(".msg").hide();
        });
        function fillin(){
            var chk;
            var arr = [];
            var j = 0;
            var MyRows = $('table#reg').find('tbody').find('tr');
            for(var i = 0 ; i < MyRows.length; i++ ){
                chk = $('input:checkbox#'+i).is(':checked');
                if(chk){
                    arr[j] =  $(MyRows[i]).find('td:eq(0)').find(".ot").text();
                    j++;
                }
            }
            arr = arr.filter(function(item, pos) {
            return arr.indexOf(item) == pos;
            });
            $('#email').val(arr.join(" , "));
        }
        $('#msgform').submit(function(e){
            e.preventDefault();
            $.ajax({
               url:'send_msg.jsp',
               type:'post',
               data:$('#msgform').serialize(),
               success : function(data){
                   $('.modal').modal('toggle');
               }
            });
        })
        function getCount(x){
            $.ajax({
                url:'getCount.jsp',
                type:'post',
                data:$('#countsend'+x).serialize(),
                success: function(data){
                     $('#count'+x).replaceWith(data);
                }
            })
        }

    $('[data-toggle="tooltip"]').tooltip();
    </script>
</html>
