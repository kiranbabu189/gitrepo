<%-- 
    Document   : admin_home
    Created on : 23 Jun, 2016, 7:14:50 PM
    Author     : kiran
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--<link rel="stylesheet" href="css/checkbox.css">-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" href="css/bootstrapmodal.css">
    <script src="js/boot2.js"></script>
<!DOCTYPE html>
        <div class="container" id="welcome">
            <div class="row">
                <div class="col-md-12">
                    <div class="well">New Registrations</div>
                </div>
            </div>
            <table class="table table-hover" id="reg">
    <thead>
      <tr>
        <th>Date</th>
        <th>Country</th>
        <th>Mail</th>
        <th><input type="checkbox" id="chkbox"  value="option1">&nbsp;&nbsp;Action </th>
      </tr>
    </thead>
    <tbody>
            <%
                dbclass ob = new dbclass();
                Statement st1 = ob.con.createStatement();
                Statement st2 = ob.con.createStatement();
                ResultSet r2;
                ResultSet r1 = st1.executeQuery("select new_user from admin_update");
                int i=0;
                while(r1.next()){
                r2 = st2.executeQuery("select * from user_details where username = '"+r1.getString("new_user")+"'");
                r2.next();
                
                %>
                <tr>
                    <td><%= r2.getString("Join_date") %></td>
                    <td><%= r2.getString("Country") %></td>
                    <td><%= r2.getString("email") %></td>
                    <td><input type="checkbox" class="chkbox"  id = "<%= i %>" value="<%= r2.getString("email") %>"></td>
                </tr>
                <% i++; }
            %>
            
    </tbody>
    </table>
    
            <div>
                <button type="button" class="btn btn-info btn-lg msg" data-toggle="modal" style="display:none;"  data-target="#myModal" onclick="fillin()">Send Message</button>
            </div>
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
        <form role="form">
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email">
            </div>
            <div class="form-group">
                <label for="pwd">Message:</label>
                <textarea class="form-control" id="txt"></textarea>
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
                    arr[j] =  $(MyRows[i]).find('td:eq(2)').html();
                    j++;
                }
            }
            $('#email').val(arr.join(" , "));
        }
    </script>
 </html>
