<%-- 
    Document   : datetest
    Created on : 21 Jun, 2016, 11:44:10 AM
    Author     : Kiran B
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<html>
<head>
<title>Display Current Date & Time</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--<script src="js/bootstrap-formhelpers-countries.js"></script>-->
<!--<link href="css/bootstrap-form-helpers.min.css" rel="stylesheet">-->
<!--<script src="js/bootstrap-formhelpers.min.js"></script>-->
<!--<link href="../assets/css/bootstrap.min.css?=129132" rel="stylesheet">-->
<!--<link href="../assets/css/bootstrap-formhelpers.min.css" rel="stylesheet">-->
<!--<link href="../assets/css/boot.css?=129132" rel="stylesheet">-->
<!--<script src="https://cdn.jsdelivr.net/g/bootstrap.formhelpers@1.8.2(js/bootstrap-formhelpers-countries.en_US.js+js/bootstrap-formhelpers-countries.js)"></script>-->
</head>
<body>
<center>
<h1>Display Current Date & Time</h1>
</center>
<%
      Date dNow = new Date( );
   SimpleDateFormat ft = 
   new SimpleDateFormat ("yyyy/MM/dd HH:mm:ss");
   String s = ft.format(dNow);
   out.print( "<h2 align=\"center\">" + s + "</h2>");
%>
<select class="form-control bfh-countries" data-country="US">
    <option>India</option>
    <option>USA</option>
    <option>Canada</option>
    <option>Chile</option>
    <option>Russia</option>
</select>
</body>
</html>