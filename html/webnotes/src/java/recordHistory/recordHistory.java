/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package recordHistory;

import dbpack.dbclass;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "recordHistory", urlPatterns = {"/recordHistory"})
public class recordHistory extends HttpServlet {

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
            throws ServletException, IOException, ParseException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet recordHistory</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet recordHistory at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
                HttpSession session = request.getSession();
              String sin = (String)session.getAttribute("sin");
              String uname = (String)session.getAttribute("id");
              SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        Date date1 = new Date();
        String dateInString = sdf.format(date1);
        Date date = (Date) sdf.parse(dateInString);
        String sout = date.getTime()+"000";
        out.println(sin+"<br>"+sout+"<br>");
        Class.forName("org.sqlite.JDBC");
        String connection = "jdbc:sqlite:C:\\Users\\Kiran B\\AppData\\Roaming\\Mozilla\\Firefox\\Profiles\\ba6pn6fc.default\\places.sqlite";
        Connection conn1 = DriverManager.getConnection(connection);
        Statement stat = conn1.createStatement();
        ResultSet rs = stat.executeQuery("select * from moz_places where last_visit_date between '"+sin+"' and '"+sout+"' and title not null and url not like 'http://localhost%'");
        dbclass db = new dbclass();
        Statement st = db.con.createStatement();
        while(rs.next()){  
//            out.print(rs.getString("url"));
            st.executeUpdate("insert into recordhistory (url,title,u_id) values ('"+rs.getString("url").replace("'", " ")+"','"+rs.getString("title").replace("'", " ")+"','"+uname+"')");
        }
        RequestDispatcher rd = request.getRequestDispatcher("signOut");
        rd.forward(request,response);
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
        } catch (ParseException ex) {
            Logger.getLogger(recordHistory.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(recordHistory.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(recordHistory.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ParseException ex) {
            Logger.getLogger(recordHistory.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(recordHistory.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(recordHistory.class.getName()).log(Level.SEVERE, null, ex);
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
