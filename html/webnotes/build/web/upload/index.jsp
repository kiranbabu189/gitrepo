<%-- 
    Document   : index
    Created on : Feb 15, 2016, 12:28:53 PM
    Author     : Jojo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="upload_form.jsp" method="post" enctype="multipart/form-data" name="form1">
      <table width="437" height="291" border="1" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="152"><strong>Full Name </strong></td>
          <td width="18"><strong>:</strong></td>
          <td width="154"><input name="name" type="text" id="name"></td>
        </tr>
        <tr>
          <td><strong>Age </strong></td>
          <td><strong>:</strong></td>
          <td><input name="age" type="text" id="age"></td>
        </tr>
        <tr>
          <td><strong>Sex</strong></td>
          <td><strong>:</strong></td>
          <td><input name="sex" type="radio" value="Male">
            Male 
            <input name="sex" type="radio" value="Female">
            Female</td>
        </tr>
        <tr>
          <td><strong>Mobile Number </strong></td>
          <td><strong>:</strong></td>
          <td><input name="mobile" type="text" id="mobile"></td>
        </tr>
        <tr>
          <td><strong>Address</strong></td>
          <td><strong>:</strong></td>
          <td><textarea name="address" id="address"></textarea></td>
        </tr>
        <tr>
          <td><strong>Photo</strong></td>
          <td><strong>:</strong></td>
          <td><input name="photo" type="file" id="photo"></td>
        </tr>
        <tr>
          <td><strong>Resume</strong></td>
          <td><strong>:</strong></td>
          <td><input name="resume" type="file" id="resume"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit" value="Submit">
          </label></td>
        </tr>
      </table>
    </form>
    </body>
</html>
