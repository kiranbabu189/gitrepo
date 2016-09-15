/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import dbpack.dbclass;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kiran B
 */
@WebServlet(name = "cleanWord", urlPatterns = {"/cleanWord"})
public class cleanWord extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String word = request.getParameter("question");
            stopwords ob = new stopwords();
            special_symbol ob1=new special_symbol();
            calculate_occurance ob2=new calculate_occurance();
            unigram ob3=new unigram();
            bigram ob4=new bigram();
            trigram ob5=new trigram();
            dbclass db = new dbclass();
            Statement st = db.con.createStatement();
            ArrayList<String> wordlist = new ArrayList<String>();
            word = ob.words(word);
            word = ob1.symbol(word);
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
            
            for(int p=0;p < wordlist.size();p++)
            {
                System.out.println(wordlist.get(p));
            }
            out.print(wordlist.size());
            for(int p = 0 ; p < wordlist.size() ; p++)
                    out.print(wordlist.get(p)+"<br>");
            int x ;
            ResultSet rs = st.executeQuery("select * from recordHistory order by id asc");
            rs.last();
            int[] total=new int[rs.getRow()];
            String[] doc_c = new String [rs.getRow()];
            rs.beforeFirst();
            int k=0;
            while(rs.next()){
                x = 0;
                String title = rs.getString("title");                  
                title = ob.words(title);
                title = ob1.symbol(title);
                out.print("<br>"+title+"<br>");
                for(int i=0;i<wordlist.size();i++)
                {
                    x+=ob2.occurance(title , wordlist.get(i));
                    out.print(wordlist.get(i)+" "+x);
                }                   
                total[k]=x;
//                out.print("title id "+ rs.getString("id") + " title name "+ rs.getString("title")+ " count "+ x +"<br>" );
                doc_c[k] = rs.getString("id");
                k++;
            }
            for(int m = 0 ; m < total.length ; m++)
               System.out.print("count" + total[m]); 
        int swap1;
        String swap2;
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
        for(int m = 0 ; m < total.length ; m++)
               out.print("count" + total[m]); 
        HttpSession session = request.getSession();
        session.setAttribute("advisor1", doc_c[0]);
        session.setAttribute("advisor2", doc_c[1]);
        session.setAttribute("advisor3", doc_c[2]);
        session.setAttribute("question", word);
        response.sendRedirect("advisor.jsp");
    }
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(cleanWord.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(cleanWord.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
