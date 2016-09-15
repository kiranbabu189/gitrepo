<%-- 
    Document   : trendqs
    Created on : 6 Jun, 2016, 6:58:39 PM
    Author     : Kiran B
--%>

<%@page import="pack.trigram"%>
<%@page import="pack.bigram"%>
<%@page import="pack.unigram"%>
<%@page import="pack.calculate_occurance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.stopwords"%>
<%@page import="pack.special_symbol"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbpack.dbclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">-->
        <script src="js/jquery-2.1.4.min.js"></script>
        <link href="css/trans_div.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/boot.js"></script>
        <script src="js/boot2.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style>
            body,html {
                /*position: absolute;*/
                background-image:url(images/3840x2400.jpg) ;
                background-size: inherit;
                /*background-repeat:no-repeat;*/
                /*height: 100%;*/
                width:100%;
                height:100%;
                margin:0;
                padding:0;
                z-index:20;
            }
            .wd{
                padding-top: 40px;
                
            }
            .img_size{
            width:20px;
            height:20px;
            }
            form{
                display: inline;
            }
            #img{
        width:248px;
        height:235px;
    }
        </style>
       
    </head>
    <body>
       <%--<%@include file="db.jsp" %>--%>
        <%@include file="header.jsp" %>
        <div class="container wd">
            <div class="row-fluid">
                <div class="col-md-8">
                    <% //  String d_name = "java"; 
//            String domain = request.getParameter("pg");
//                        String domain = "java";
//                        String red = domain+"_updates.jsp";
                        String domain = request.getParameter("pg");
//                        String domain = "java";
                        String red = "updates/"+domain+"_updates.jsp";
                        stopwords ob = new stopwords();
                        special_symbol ob1=new special_symbol();
                        calculate_occurance ob2=new calculate_occurance();
                        unigram ob3=new unigram();
                        bigram ob4=new bigram();
                        trigram ob5=new trigram();
            
                        dbclass db = new dbclass();
                        Statement st = db.con.createStatement();
                        Statement st1 = db.con.createStatement();
                        Statement st2 = db.con.createStatement();
                        Statement st3 = db.con.createStatement();
                        Statement st4 = db.con.createStatement();
            
                        ArrayList<String> wordlist=new ArrayList<String>();
                        ResultSet rs ;
                        String rm;
                        rs = st.executeQuery("select * from keyphrase where domain_name='"+domain+"'");
                        if(rs.next()){
                        while(rs.next()){
                    %>
                    <div class="row">
                        <div class="col-md-12 " id="content">
                            <div class="well">
                                <h4><% out.println(rs.getString("question")); %></h4>
                                <% 
                                   String q_id = rs.getString("id"); 
                                   String id=rs.getString("id");
                                   String word= rs.getString("question");
                                   word=ob.words(word);
                                   word=ob1.symbol(word);

                                   String[] str=ob3.word(word);
                                   for(int p=0;p<str.length;p++)
                                   {
                                       wordlist.add(str[p]);
                                   }

                                   String[] str1=ob4.word(word);
                                   for(int p=0;p<str1.length;p++)
                                   {
                                       wordlist.add(str1[p]);
                                   }

                                   String[] str2=ob5.word(word);
                                   for(int p=0;p<str2.length;p++)
                                   {
                                       wordlist.add(str2[p]);
                                   }
               
               
               //unigram bigram trigram
               
                                   ResultSet rs1=st1.executeQuery("select * from answer where q_id='"+id+"' order by ans_id asc");
                                   int[] total=new int[wordlist.size()];
               
                                    int k=0;
                                   while(rs1.next())
                                   {
                                       int x=0;
                                       String ans=rs1.getString("answer");

                                       ans=ob.words(ans);
                                       ans=ob1.symbol(ans);
                                       //System.out.println("***************************************************");
                                       for(int i=0;i<wordlist.size();i++)
                                       {
                                          x+=ob2.occurance(ans, wordlist.get(i));
                                          //System.out.println(wordlist.get(i)+"    "+x+"       "+ans);
                                       }

                                       total[k]=x;
                                       k++;
                                   }

                                   int max=total[0];
                                   int r=0;
                                   for(int i=0;i<wordlist.size();i++)
                                   {
                                       //out.println("count "+wordlist.get(i)+"     "+total[i]+"<br/>");
                                       if(max<total[i])
                                       {
                                           max=total[i];
                                           r=i++;
                                       }
                                   }

                                   //out.println(max+"   "+r+"<br/>");

                                   ResultSet rs2=st2.executeQuery("select a.ans_id,a.u_id,a.like_val,a.dislike_val,a.answer,b.username,b.image from answer a , user_details b where q_id='"+id+"' and a.u_id = b.u_id and a.domain_name = '"+domain+"' order by ans_id asc limit 1 offset "+r+" ");
                                   //rs2.next();
                                    if(!rs2.next()){%><a title="comment" id="q<%= q_id %>" onclick="txt_disp(<%= q_id %>)"><span  class="glyphicon glyphicon-comment" style="cursor:pointer;"></span></a>
                                        <form id="reply<%= q_id%>">
                                            <textarea id="qa<%= q_id %>" style="width:100%; display:none;" oninput="txtchange(<%= id %>)" name="answer"></textarea>
                                            <input type="hidden" value="<%= q_id %>" name="q_id">
                                            <input type="hidden" value="<%= domain %>" name="domain">
                                            <div>
                                                <button type="button" style="display:none;" id="ba<%= id %>" class="btn-success" onclick="reply(<%= q_id %>)">post</button>
                                            </div>
                                        </form>
                                        </div>
                                        </div>
                                    </div>
                                   <%}else{
                                   do
                                   {
                                       String ans_id=rs2.getString("ans_id");
                                       String ans = rs2.getString("answer");
                                       String like_val = rs2.getString("a.like_val");
                                       String dislike_val = rs2.getString("a.dislike_val");    
                                       String username = rs2.getString("b.username");  
                                       String image = rs2.getString("b.image"); 
                                       String user_id = rs2.getString("a.u_id");
                                       String disp2 = ans.replaceAll("\n","<br/>");
                    //                   out.println("id : "+ans_id+"   answer :  "+ans+"<br/>");
                                       %>
                                    <blockquote>
                                        <div><%= disp2  %><a class="helpicon" href="#"></a></div>
                                        <footer>answered by <a href="#popup1" data-toggle="modal" data-target="#mo<%= ans_id %>" onclick="callmodal(<%= ans_id %>)"><%= username %></a><br>
                                            <form id="<%= ans_id %>"><input type="hidden" name ="id" value="<%= ans_id %>"> <input type="hidden" name="type" value="like">please rate -- <span id="cc<%= ans_id %>"><%= like_val %></span>&nbsp; <a title='like' id="<%= ans_id %>" style="cursor:pointer;" onclick="likeval(<%= ans_id %>)"><span  class="glyphicon glyphicon-thumbs-up"></span></a></form>
                                            &nbsp;&nbsp;&nbsp;<form id="a<%= ans_id %>"><input type="hidden" name ="id" value="<%= ans_id %>"><input type="hidden" name="type" value="dislike"><span id="pp<%= ans_id %>"><%= dislike_val %></span> <a title='dislike' id="dislike" style="cursor:pointer;" onclick="dislikeval(<%= ans_id %>)"><span class="glyphicon glyphicon-thumbs-down"></span></a></form>
                                             &nbsp;&nbsp;&nbsp;<a title="comment" id="q<%= q_id %>" onclick="txt_disp(<%= q_id %>)"><span  class="glyphicon glyphicon-comment" style="cursor:pointer;"></span></a>
                                            &nbsp;&nbsp;&nbsp;<form id="b<%= ans_id %>"><input type="hidden" name ="id" value="<%= ans_id %>"><a title="bookmark" id="bookmark" style="cursor:pointer;" onclick="bookmark(<%= ans_id %>)"><span  class="glyphicon glyphicon-tags" style=""></span><span id="dd<%= ans_id %>"></span></a></form>
                                            &nbsp;&nbsp;&nbsp;<form id="c<%= ans_id %>"><input type="hidden" name ="id" value="<%= ans_id %>"><a title="flag user" id="flag" style="cursor:pointer;"  onclick="flag_user(<%= ans_id %>)"><span id="flag<%= ans_id %>"></span><span  class="glyphicon glyphicon-flag" style="cursor:pointer;"></span></a></form>
                                        </footer>
                                    </blockquote>
                                   <form id="reply<%= q_id%>">
                                            <textarea id="qa<%= q_id %>" style="width:100%; display:none;" oninput="txtchange(<%= id %>)" name="answer"></textarea>
                                            <input type="hidden" value="<%= q_id %>" name="q_id">
                                            <input type="hidden" value="<%= domain %>" name="domain">
                                            <div>
                                                <button type="button" style="display:none;" id="ba<%= id %>" class="btn-success" onclick="reply(<%= q_id %>)">post</button>
                                            </div>
                                        </form>
                                    <div class="modal fade" id="mo<%= ans_id %>" role="dialog">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h4 class="modal-title"><img src="upload/<%= image %>" class="img-rounded" id="img" ><%= username %></h4>
                                </div>
                                <div class="modal-body">
                                    <input type="hidden" name="modval" id="modval">
                                    <%
//                                        String id = request.getParameter("modval"); 
//                                        if(id != null){
                                        ResultSet rs4 ;
//                                        ResultSet rs3 ;
                                        int g,c = 0;   
                                        String disp = null;
//                                        String id = request.getParameter("modval"); 
//                                        rs3 = st3.executeQuery("select d_name from domain");
//                                        while(rs3.next()){
    //                                        String dv_name = rs3.getString("d_name");
                                        rs4 = st4.executeQuery("select count(answer) as c_user from answer where u_id = '"+user_id+"' and domain_name = '"+domain+"'");
                                        rs4.next();
//                                           0000000000000000 g = Integer.parseInt(rs4.getString("c_user"));
                                            %><p class="text-success"><em><%= rs4.getString("c_user") %> post's in <%= domain %></em></p>
                                    <!--<p><h4>popular in </h4></p>-->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}while(rs2.next());%>
                    </div>
                </div>
            </div>
               <% }   }
               }else 
                out.println("NO Trending Topics Yet");
            
                %>
            </div> 
                <div class="col-md-4">
                    <% pageContext.include( red ); %>
                </div>
            </div>
        </div>
                <script>
//                $(document).ready(function(){
                function likeval(x){
                    $.ajax({
                      url: 'like_count.jsp',
                      type: 'post',
                      data: $('form#'+x).serialize(),
                      success: function(data){
                            $("#cc"+x).html(data);
                      }
                   });
                }
                function dislikeval(x){
                    $.ajax({
                      url: 'dislike_count.jsp',
                      type: 'post',
                      data: $('form#a'+x).serialize(),
                      success: function(data){
                            $("#pp"+x).html(data);
                      }
                   });
                }
                function bookmark(x){
                    $.ajax({
                      url: 'bookmark.jsp',
                      type: 'post',
                      data: $('form#b'+x).serialize(),
                      success: function(data){
                            $("#dd"+x).html(data);
                            //$("#dd"+x).css({'color':'red'});
                      },
                      error: function(data){
                          console.log("sdfsdf");
                      }
                   });
                   
                }
                function txt_disp(x){
                    $("#qa"+x).slideToggle();
                    $('#ba'+x).hide();
                }
                function callmodal(x){
                    document.getElementById("modval").value = x;
                }
                function txtchange(x){
//                    $('#qa'+x).click(function(){
                        $('#ba'+x).show();
//                    })
                }
//                $("form#reply").submit(function(e){
//                    e.preventDefault();
                function reply(x){
                    $.ajax({
                       url:'reply.jsp',
                       type:'post',
                       data:$('form#reply'+x).serialize(),
                       success: function(data){
                           if($.trim(data) == "success")
                              $("#qa"+x).slideToggle(); 
                              $('#ba'+x).hide();
                       },
                       error: function(){
                           alert("ssdf");
                       }
                    });
                }
                function flag_user(x){
                    $.ajax({
                       url:'flag_user.jsp',
                       type:'post',
                       data:$('form#c'+x).serialize(),
                       success: function(data){
                           $("#flag"+x).html(data);
                       },
                       error: function(data){
                           alert(data);
                       }
                    });
                }
            </script>
            
            
    <%@include file="footer.jsp" %>
</body>
</html>

<!--
String s1 = rs.getString("username");
                    String s2 = rs.getString("description");
                    String s3 = rs.getString("question");
                    String ans_id = rs.getString("id");
                    String s5 = rs.getString("image");
                    String s6 = rs.getString("u_id");-->