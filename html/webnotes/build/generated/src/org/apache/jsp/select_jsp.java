package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class select_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/db.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write('\n');

Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost/webnotes","root","");

Statement st= con.createStatement();
Statement st1= con.createStatement();
Statement st3= con.createStatement();
ResultSet rs ;

      out.write('\n');
      out.write('\n');
      out.write('\n');
 
//    String name = request.getParameter("name");
//    String password = request.getParameter("password");
    String name="kiranb";
    String password="kiran";
    String pg = request.getParameter("page");
    rs=st.executeQuery("select username,name,u_id from user_details where username='"+name+"' or password='"+password+"'");
    rs.next();
    String nm = rs.getString("name");
    String username = rs.getString("username");
    String pass = rs.getString("password");
    if(!rs.next()){
        out.print("both");
    }
    else if(name != username){
        out.print("username");
    }
    else if(pass != password){
        out.print("password");
    }
    else{
//        String nm = rs.getString("name");
//        String username = rs.getString("username");
        String nm1 = rs.getString("u_id");
        session.setAttribute("user",nm);
        session.setAttribute("id",nm1);
        session.setAttribute("uname",username);
        if(pg != null){ response.sendRedirect("question.jsp"); }
        else{
            out.println("Success");
        }
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
