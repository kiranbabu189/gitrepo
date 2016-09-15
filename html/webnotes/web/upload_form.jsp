<%-- 
    Document   : upload_form
    Created on : Feb 15, 2016, 12:33:39 PM
    Author     : Jojo
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
 <%  
   File file ;
//   String name="",age="",sex="",mobile="",address="";
   
   ArrayList<String> fileset=new ArrayList();
   ArrayList<String> details=new ArrayList();
   int maxFileSize = 50000 * 1024;
   int maxMemSize = 50000 * 1024;
   String localpath="C://Users//Kiran B//Documents//NetBeansProjects//webnotes//web//upload//";
   String filePath=localpath;
   File folder=new File(filePath);
   folder.mkdir();
   // Verify the content type
   String contentType = request.getContentType();
//  out.println(contentType);
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      try{ 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);
         // Process the uploaded file items
         //out.println("<br/>"+fileItems);
         Iterator i = fileItems.iterator();
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
        
        //    out.println("<br/>"+fi);
            if ( !fi.isFormField () )	
            {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
            file = new File( filePath + 
            fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
            file = new File( filePath + 
            fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
        
            String fname=fileName;
            fileset.add(fname);
            }
            
            else{
                String key=fi.getString();
                
                details.add(key);
            }
             
            //out.println(fname+" "+name+" "+key+" "+sound);
         }
         String photo=fileset.get(0);
         String id = (String)session.getAttribute("id");
         st.executeUpdate("update user_details set image='"+photo+"' where u_id = '"+id+"'");
//         String resume=fileset.get(1);
out.println("Success");
response.sendRedirect("profile.jsp");
        }catch(Exception ex) {
         System.out.println(ex);
      }
   }
%>