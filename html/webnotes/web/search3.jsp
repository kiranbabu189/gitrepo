<%-- 
    Document   : index
    Created on : 20 Jul, 2016, 1:32:14 PM
    Author     : Kiran B
--%>


<%@page import="Tfidfcls.DocumentParser"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.File"%>
<%@page import="tfidf.tfidf"%>
<%@page import="java.util.Arrays"%>
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
<!--<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />-->
<!DOCTYPE html>
<%
//if(request.getParameter("submit")!=null){
//try{
            String d_name = "java"; 
            
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
            Statement st5 = db.con.createStatement();
            Statement st6 = db.con.createStatement();
            Statement st7 = db.con.createStatement();
            ArrayList<String> wordlist=new ArrayList<String>();
//            ResultSet rs ;
            String rm;
            //rs = st.executeQuery("select * from keyphrase where domain_name='"+d_name+"'");
            //while(rs.next()){
               out.println("<h1>"+request.getParameter("question")+"</h1><br/>");
//               String q = request.getParameter("question");
               //String id=rs.getString("id");
               String word= request.getParameter("question");
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
               for(int p=0;p<wordlist.size();p++)
               {
                   System.out.println(wordlist.get(p));
               }
               st.executeUpdate("TRUNCATE TABLE tfidf");
               File fff=new File("C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//tfidf//file1.txt");
                fff.createNewFile();
                BufferedWriter bw1=new BufferedWriter(new FileWriter(fff));
                for(int p=0;p<wordlist.size();p++)
               {
                   bw1.write(wordlist.get(p).toString());
               }
                
                bw1.close();
                
                ResultSet rs4=st4.executeQuery("select * from answer");
                while(rs4.next())
                {
                    File ffff=new File("C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//tfidf//file2.txt");
                    ffff.createNewFile();
                    BufferedWriter bw2=new BufferedWriter(new FileWriter(ffff));
                    bw2.write(rs4.getString("answer").toString().toLowerCase());
                    bw2.close();
                    DocumentParser dp = new DocumentParser();
                    dp.parseFiles("C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//tfidf");
                    dp.tfIdfCalculator(); 
                    double[][] cs=dp.getCosineSimilarity();
                    
                    st5.executeUpdate("insert into tfidf values('"+rs4.getString(1)+"','"+cs[0][1]+"')");
                    System.out.print("  DOCUMENT ID   "+rs4.getString(1)+ "  TFIDF SCORE   "+ cs[0][1]);
                }
                
                StringBuilder data=new StringBuilder();
                
                
                int xx=0;
                ResultSet rs9;
                
                ResultSet rs5=st5.executeQuery("SELECT k.answer,k.u_id,t.kid FROM answer k,tfidf t where k.ans_id=t.kid order by t.match desc limit 3 ");
                while(rs5.next())
                {
//                    String idd=rs5.getString(1);
                   String ans=rs5.getString(1);
                   String disp = ans.replaceAll("\n","<br/>");
                    rs9 = st6.executeQuery("select name from user_details where u_id = '"+rs5.getString(2)+"'");
                    rs9.next();
                    if(xx==0)
                        out.println(disp+"<br/><br/> <p class=text-muted> posted by <a href=#> "+rs9.getString("name")+"</a></p><br><a href=# onclick=dispr() id=hme>see rest</a><br>");
//                    data.append(rs5.getString(1).toLowerCase());
//                    out.print("docid <br>"+rs5.getString(3));
                    else
                        out.println("<div class=well  id='"+xx+"' style=display:none;>"+disp+"<br/><br/> <p class=text-muted> posted by <a href=#> "+rs9.getString("name")+"</a></p></div>");
                    xx++;
                }
                
            out.println("<br>Read Also<br>");
            ResultSet rs10;
            String[] doc = new String[3];
            for(int m=0;m<=2;m++){
//                System.out.println(doc_c[m]);
                 rs10 = st7.executeQuery("SELECT k.answer,t.kid FROM answer k,tfidf t where k.ans_id=t.kid order by t.match desc limit 3");
                 while(rs10.next()){
                     doc[m] = rs10.getString(1);
                     doc[m]=ob.words(doc[m]);
                     doc[m]=ob1.symbol(doc[m]);
                 }
            }
            tfidf tags = new tfidf(doc);
            String [] list = tags.getWordVector();
             for(int i=0;i<list.length;i++){
            %>
            <div style="margin-top: 12px; display: inline-block;"><span class="label label-info" id="<%=i%>">
                    <form style="display:inline;" id="search<%= i %>" ><span style="font-weight: 700; "> <input type="hidden" value="<%= list[i] %>" name="question"> <a id="<%= i %>" onclick="sendq(<%= i %>)"> <% out.println(list[i]);%> </a></span></form>
            <a href = "#" style="text-decoration: none; cursor: default" onclick="htag(<%= i %>)">&times;</a>
            </span>&nbsp;&nbsp;&nbsp;
            </div>
            <%}
            %>
            <br><br>
            <div class="row">
                <div class=" col-md-12 col-md-offset-4" style="">
                    <button class="alert alert-info" onclick="searchWeb()"><% out.println("Not Satisfied ? Search Web For Results"); %></button>
                </div>
            </div>
            
  

                

        
