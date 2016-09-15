<%-- 
    Document   : profile
    Created on : 2 Jun, 2016, 12:09:21 PM
    Author     : Kiran B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="profile">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/angular.js"></script>
        <style>
    body {
    background-image:url(images/bg.png);
    }
    .pd{
        padding-top: 20px;
    }
    .pd1{
        margin-top: -3px;
    }
    #img{
        width:248px;
        height:235px;
    }
    .uppc{
        text-transform: uppercase;
        word-spacing: 1em;
        padding-bottom: 1px;
    }
    input[type=text]{
        border:0px;
        margin-bottom: 3px;
        background-color: #efeded; 
    }
    input[type=password]{
        border:0px;
        margin-bottom: 3px;
        background-color: #efeded; 
    }
    input[type=email]{
        border:0px;
        margin-bottom: 3px;
        background-color: #efeded; 
    }
    #update{
        display:none;
    }
    .sh{
        display: none;
    }
</style>
<script>
    
    $(document).ready(function(){
        $("form#form").submit(function(e){
           e.preventDefault();
           $.ajax({
              url: 'update.jsp',
              type: 'post',
              data: $('form#form').serialize(),
              success: function(data){
//                  window.location.reload();
              }
           });
        });
        
        });
    function chng(x,y,z){
//        alert(z);
//        var z1 = document.getElementByI(z);
        if(z == "edit"){var bd = 0+"px";} else{ var bd = "1px solid black"; }
        var ch = document.getElementsByClassName("enb");
        ch[0].readOnly = y; ch[0].style.border= bd;
        ch[1].readOnly = y; ch[1].style.border= bd;
        ch[2].readOnly = y; ch[2].style.border= bd;
        ch[3].readOnly = y; ch[3].style.border= bd;
        ch[4].readOnly = y; ch[4].style.border= bd;
        ch[5].readOnly = y; ch[5].style.border= bd;
        ch[6].readOnly = y; ch[6].style.border= bd;
        $(x).hide();
        $("#"+z).show();
//        document.getElementsByClassName("enb").style.border='solid';
    }
    function checkname(){
        var name = document.getElementById("name").value;
        var regname =  /^[a-zA-Z]+$/;
        if(name.match(regname)){
            return true;
        }
        else{
            
            alert(name);
            document.getElementById("name").value="";
        }
    }
    function passw(){
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;
//                alert(pass1);
//                alert(pass2);
//                var regname =  /^[a-zA-Z]+$/;
        if(pass1 == pass2){
            return true;
        }
        else{
            
            alert("password missmatch");
            document.getElementById("pass2").value="";
            return false;
        }
    } 

    function checkphone(x,idc){
        var phno = x.value;

        var regag = /^[0-9]+$/;
        var regph = /[2-9]{2}\d{8}/;
        if (idc == 1){
            if(phno.match(regag)){
                return true;
            }
            else{
                alert("ENTER A VALID NUMBER");
                x.value="";
            }
        }
    else{
    }
        if(phno.match(regph)){
            return true;
        }
        else{
            alert("ENTER A VALID NUMBER");
            x.value="";
        }
    }
    
</script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="db.jsp" %>
        <%
          String id = (String)session.getAttribute("id");  
            rs = st.executeQuery("select * from user_details where u_id = '"+id+"' ");
            rs.next();
            String img = rs.getString(4);
            String name = rs.getString(2);
            %>
            
        <div class="container pd" ng-controller="names">
            <div class="well">
                <div class="ref" ><h1>Hello {{ name | uppercase }} </h1></div>
            </div>
            <div class="panel">
                <div class="row" style=" margin-right:4px;">
                    <div class="col-md-3" style="padding-top:1px; ">
                        <img src="images/prof.jpg" class="img-rounded" id="img" >
                    </div> 
                    <div class="col-md-9" style="padding-top:1px; ">
                        <div class="well uppc">
                            <form id="form">
                                <div class="row" >
                                    <div class="col-md-2">Name:</div><div class="col-md-7"> <input type="text" name="name" id="name" onblur="checkname()" ng-model="name"   class = "enb" readonly></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">Email:</div><div class="col-md-9"> <input type="email" name="email" class = "enb" value="<% out.println(rs.getString(5));%>" readonly></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">Address:</div><div class="col-md-9"> <input type="text" name="address" class = "enb" value="<% out.println(rs.getString(6));%>" readonly></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">Mobile:</div><div class="col-md-9"> <input type="text" name="phno" id="phone"  onblur="checkphone(this,0)" class = "enb" value="<% out.println(rs.getString(7));%>" readonly></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">Username:</div><div class="col-md-9"> <input type="text" name="username" class = "enb" value="<% out.println(rs.getString(8));%>" readonly></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">Password</div><div class="col-md-9"> <input type="password" name="password" class = "enb" id="pass1" value="<% out.println(rs.getString(9));%>" readonly></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">Re-Password</div><div class="col-md-9"><input type="password" name="password" class ="enb" id="pass2" onblur="passw()" value="<% out.println(rs.getString(9));%>" readonly></div>
    <!--                            <input type="password" class="form-control popover-right" data-toggle="popover" title="please note" data-content="should include any special character and number." id="pass2" onblur="passw()" name="pwd" placeholder="password" style="width:inherit;">-->
                                </div>
                                <div class="row pull-right">
                                    <div class="col-md-12 "><button type="submit" onclick="chng(this,true,'edit');" class="btn btn-primary btn-xs" id="update" >Update</button><button type="button" onclick="chng(this,false,'update');" class="btn btn-primary btn-xs" id="edit" >Edit Profile</button></div>
                                </div>
                                <br>
                            </form>
                        </div>
                    </div>
                </div>
                <script>
                    var name = "<%= rs.getString(2) %>";
                    var application = angular.module('profile',[]);
                        application.controller('names',function($scope){
                        $scope.name = name;
                    });
                </script>
                <div class="row pd1">
                    <div class="col-md-3 ">
                        <form action="upload_form.jsp" method="post" enctype="multipart/form-data" name="form1" id="form">
                        <input name="photo" type="file" id="photo">
<!--                        <span class="fileinput-new">upload image</span>-->
                        <button type="submit" class="btn btn-primary btn-xs">upload image</button>
                        </form>
                    </div>  
                </div>
            </div>
            <div class="well">
                <h1>Your Webnotes Activity </h1>   
            </div>
            <div class="panel">
                <div class="panel-heading"><h3 class="title">Your Post's</h3></div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="list-group">
                            <% rs = st.executeQuery("select a.ans_id,a.answer,a.like_val,a.dislike_val,a.post_date,b.question from answer a , keyphrase b where a.u_id = '"+id+"' and a.q_id = b.id"); 
                            while(rs.next()){
                            String e_no = rs.getString("a.ans_id");    %>
                            <li class="list-group-item"><span class="badge"><% out.println(rs.getString("a.like_val"));%>likes&nbsp;&nbsp;<% out.println(rs.getString("a.dislike_val"));%>dislikes</span><a title='edit' id='<%= e_no %>' onclick='edit_show(<%= e_no %>)'><% out.println(rs.getString("b.question"));%></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h6 style='display:inline; text-align: center;'><p class="text-muted">Posted on <% out.println(rs.getString("a.post_date")); %></p></h6></li>
                            <div class="panel panel-default sh" id='div<%= e_no %>'>
                                <div class="panel-heading"><% out.println(rs.getString("b.question"));%></div>
                                <form method='post' id='form<%= e_no %>'>
                                    <input type='hidden' name='doc_id' value='<%= e_no %>'>
                                    <div class="panel-body" ><div id='edited_info' contenteditable="true"><% String disp = rs.getString("a.answer").replaceAll("\n","<br/>"); out.println(disp);%></div><br><br>
                                    <input type='hidden' id='info_copy' name='info'>
                                    <button type="submit" class="btn btn-success btn-xs" onclick='info_save(<%= e_no %>)'>save</button> <button class="btn btn-danger btn-xs"  onclick='edit_hide(<%= e_no %>)'>Skip</button>
                                    </div>
                                </form>    
                            </div>
                            <%}%>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel">
                <div class="panel-heading"><h3 class="title">Your Bookmarks</h3></div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="list-group">
                            <%
                                ResultSet rs2;
                                rs2 = st3.executeQuery("select a.answer,a.ans_id,b.question from answer a , keyphrase b where a.ans_id in (select doc_id from bookmark_doc where u_id = '"+id+"') and  a.q_id = b.id ");
                                while(rs2.next()){
                                String divid = rs2.getString("a.ans_id");
                            %>  
                            <li class="list-group-item">
                                <div class="panel-heading"><a hfref="#" onclick="showbook(<%= divid%>)"><% out.println(rs2.getString("b.question")); %></a></div>
                                <div class="panel-body" id="<%= divid %>" style="display:none;"><% String ans = rs2.getString("a.answer").replaceAll("\n","<br/>"); out.println(ans); %></div>
                            </li>
                            
                                <%}
                            %>
                        </ul>
                    </div>
                </div>
            </div> 
            <div class="panel">
                <div class="panel-heading"><h3 class="title">Admin Messages</h3></div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="list-group">
                            <%
                                ResultSet rs3;
                                String uname = (String)session.getAttribute("uname"); 
                                rs3 = st3.executeQuery("select * from admin_msg where usr_nm = '"+uname+"' ");
                                while(rs3.next()){
                                    String divid = rs3.getString("msg_id");
                            %>  
                            <li class="list-group-item">
                                <div class="panel-heading"><a hsref="#" onclick="showadmsg(<%= divid%>)"><% out.println(rs3.getString("date")); %></a></div>
                                <div class="panel-body" id="admsg<%= divid %>" style="display:none;"><% String ans = rs3.getString("msg").replaceAll("\n","<br/>"); out.println(ans); %></div>
                            </li>
                            
                                <%}
                            %>
                        </ul>
                    </div>
                </div>
            </div> 
            <div class="panel">
                <div class="panel-heading"><h3 class="title">Advisor Requests</h3></div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="list-group">
                            <%
                                ResultSet rs4;
                                Statement stt = con.createStatement();
                                String status = "0";
//                                String uname = (String)session.getAttribute("uname"); 
                                rs4 = stt.executeQuery("select * from schedule where sayuser_id = '"+uname+"' and status = '"+status+"' and accept != 'reject'");
                                while(rs4.next()){
                                    String reqid = rs4.getString("id");
                                    String requser = rs4.getString("requser_id");
                            %>  
                            <li class="list-group-item">
                                <div class="panel-heading"><a hsref="#" onclick="showreq(<%= reqid%>)"><% out.println(rs4.getString("title")); %></a></div>
                                <div class="panel-body" id="reqmsg<%= reqid %>" style="display:none;">you have been requested for topic <%= rs4.getString("title") %> by <%= requser %> <form id="reqacc<%= reqid %>" > <input type="hidden" value="<%= reqid %>" name="reqid"><input type="hidden" name="acc" value="accept"><button type="submit"  onclick="reqaccedit(<%= reqid %>)" style=" display:inline!important;" class="btn btn-success btn-xs">You Know</button> </form>
                                    <form style=" display:inline!important;" id="reqrej<%= reqid %>"> <input type="hidden" name="reqid" value="<%= reqid %>"><input type="hidden" name="acc" value="reject"><button type="submit" onclick="reqrejedit(<%= reqid %>)" class="btn btn-danger btn-xs">You Dont Know</button> </form>
                                </div> 
                            </li>
                            
                                <%}
                            %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>            
        <%if(img != null){%>
        <script>
            var a = "upload/<%= img %>";
            document.getElementById("img").src = a;
            function edit_show(x){
            $("#div"+x).slideDown();
        }
        function edit_hide(x){
            $("#div"+x).slideUp();
        }
        function info_save(x){
        $("form#form"+x).submit(function(e){
           e.preventDefault();
           $("#info_copy").val($("#edited_info").text());
           $.ajax({
              url:'info_save.jsp',
              type: 'post',
              data: $("form#form"+x).serialize(),
              success: function(){
                  edit_hide(x);
              }
           });
        });
    }
    function showbook(x){
        $("#"+x).slideToggle();
    }
    function showadmsg(x){
        $("#admsg"+x).slideToggle();
    }
    function showreq(x){
        $("#reqmsg"+x).slideToggle();
    }
    function reqrejedit(x){
        $('form#reqrej'+x).submit(function(e){
            e.preventDefault();
            $.ajax({
                url:'edrej.jsp',
                type:'post',
                data:$('form#reqrej'+x).serialize(),
                success: function(data){
                    $("#reqmsg"+x).slideToggle();
                },
                error: function(data){
                    alert(data);
                }
            })
        })
    }
    function reqaccedit(x){
        $('form#reqacc'+x).submit(function(e){
            e.preventDefault();
            $.ajax({
                url:'edacc.jsp',
                type:'post',
                data:$('form#reqacc'+x).serialize(),
                success: function(data){
                    $("#reqmsg"+x).slideToggle();
                },
                error: function(data){
                    alert(data);
                }
            })
        })
    }
        </script>
        <%}%>
    <%@include file="footer.jsp" %>
    </body>
</html>
