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
               st.executeUpdate("TRUNCATE TABLE tfidf");
               File fff=new File("C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//tfidf//file1.txt");
                fff.createNewFile();
                BufferedWriter bw1=new BufferedWriter(new FileWriter(fff));
                bw1.write(word.toString());
                bw1.close();
                
                ResultSet rs4=st4.executeQuery("select * from keyphrase ");
                while(rs4.next())
                {
                    File ffff=new File("C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//tfidf//file2.txt");
                    ffff.createNewFile();
                    BufferedWriter bw2=new BufferedWriter(new FileWriter(ffff));
                    bw2.write(rs4.getString("description").toString().toLowerCase());
                    bw2.close();
                    DocumentParser dp = new DocumentParser();
                    dp.parseFiles("C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//tfidf");
                    dp.tfIdfCalculator(); 
                    double[][] cs=dp.getCosineSimilarity();
                    
                    st5.executeUpdate("insert into tfidf values('"+rs4.getString(1)+"','"+cs[0][1]+"')");
                }
                
                StringBuilder data=new StringBuilder();
                
                
                int xx=0;
                ResultSet rs5=st5.executeQuery("SELECT k.description FROM keyphrase k,tfidf t where k.id=t.kid and t.match>0 ");
                while(rs5.next())
                {
                    xx++;
                    data.append(rs5.getString(1).toLowerCase());
                }
                
//                word = data.toString();
//                word=ob.words(word);
//                word=ob1.symbol(word);
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
                 
//                for(int i=0;i<wordlist.size();i++)
//               {
//                   out.println(wordlist.get(i)+"<br>");
//               }
//               out.println(wordlist.size());
               //unigram bigram trigram
               
               ResultSet rs1 = st1.executeQuery("select * from answer  order by ans_id asc");
               rs1.last();
               int[] total=new int[rs1.getRow()];
               String[] doc_c = new String [rs1.getRow()];
               rs1.beforeFirst();
               int k=0;
               while(rs1.next())
               {
                   int x=0;
                   String ans=rs1.getString("answer");                   
                   ans=ob.words(ans);
                   ans=ob1.symbol(ans);
                   for(int i=0;i<wordlist.size();i++)
                   {
                     x+=ob2.occurance(ans, wordlist.get(i));
                     //System.out.println(wordlist.get(i)+"    "+x+"       "+ans);
                   }
////                   
                  total[k]=x;
                  doc_c[k] = rs1.getString("ans_id");
//                  out.println(total[k]);
                   k++;
               }
               int swap1;
               String swap2;
//                for(int i=0;i<total.length;i++) out.println(total[i]+" sorted<br/>");
              // out.println("<br>asd"+r+"asd<br>");
              for (int c = 0; c < ( total.length - 1 ); c++) {
                    for (int d = 0; d < total.length - c - 1; d++) {
                        if (total[d] < total[d+1]) /* For descending order use < */
                        {
                            swap1       = total[d];
                            total[d]   = total[d+1];
                            total[d+1] = swap1;
                            swap2       = doc_c[d];
                            doc_c[d]   = doc_c[d+1];
                            doc_c[d+1] = swap2;
                        }
                    }
                }
//                for(int i=0;i<total.length;i++) out.println(total[i]+" sorted<br/>");
//                for(int m=0;m<=3;m++){ Arrays.sort(total);
               //out.println(max+"   "+r+"<br/>");
               for(int m=0;m<=2;m++){
               ResultSet rss4;
               ResultSet rs2 = st2.executeQuery("select * from answer where ans_id = '"+doc_c[m]+"' ");
               while(rs2.next()){
                   rs4 = st3.executeQuery("select * from user_details where u_id = '"+rs2.getString("u_id")+"'");
                   rs4.next();
                   String idd=rs2.getString("ans_id");
                   String ans=rs2.getString("answer");
                   String disp = ans.replaceAll("\n","<br/>");
                   if(m>0){
                   out.println("<div class=well  id='"+m+"' style=display:none;>"+disp+"<br/><br/> <p class=text-muted> posted by <a href=#> "+rs4.getString("name")+"</a></p></div>");
                   }
                   else{
                       out.println(disp+"<br/><br/> <p class=text-muted> posted by <a href=#> "+rs4.getString("name")+"</a></p><br><a href=# onclick=dispr() id=hme>see rest</a><br>");
                       
                   }
            }
            }
            out.println("<br>Read Also<br>");
            ResultSet rs6;
            String[] doc = new String[3];
            for(int m=0;m<=2;m++){
                System.out.println(doc_c[m]);
                 rs6 = st.executeQuery("select * from answer where ans_id = '"+doc_c[m]+"' ");
                 while(rs6.next()){
                     doc[m] = rs6.getString("answer");
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

                

        
