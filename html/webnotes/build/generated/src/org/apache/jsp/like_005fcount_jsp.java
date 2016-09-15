package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class like_005fcount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("         \n");
      out.write("\n");

Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost/webnotes","root","");

Statement st= con.createStatement();
ResultSet rs ;

      out.write('\n');
      out.write('\n');
      out.write('\n');
 
    String id = request.getParameter("id"); 
    String u_id = (String)session.getAttribute("id");
//    rs = st.executeQuery("select * from like_dislike_table where u_id = '"+u_id+"' and like_doc = '"+id+"'");
//    if(!rs.next()){
//        rs = st.executeQuery("select like_val from keyphrase where id = '"+id+"'");
//        out.println("You and "+rs.getString("like_Val")+" others liked");
//    }
//   else{
        st.executeUpdate("insert into like_dislike_table (u_id,like_doc) values ('"+u_id+"','"+id+"')");
        st.executeUpdate("update keyphrase set like_val = like_val + 1 where id = '"+id+"'");
        rs = st.executeQuery("select like_val from keyphrase where id = '"+id+"'");
        rs.next();
        out.println(rs.getString("like_Val")+" likes");
//    }
    

      out.write('\n');
      out.write('\n');
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
