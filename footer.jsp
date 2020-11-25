<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>footer</title>
</head>
<body>
<form action="checkLogincontroller">
<table style="margin: auto; ">
<tr>
<% if(session.getAttribute("username") == null){%>
<th style="text-align: center; text-shadow: 5px 5px 5px Blue;border: double;">Bắp Quốc Lợi BookStore</th>
<th style="text-align: center; text-shadow: 5px 5px 5px Blue;border: double;">Fresher</th>
<th style="text-align: center; text-shadow: 5px 5px 5px Blue;border: double;">Họ và tên</th>
<%}else {%>
<th style="text-align: center; text-shadow: 5px 5px 5px Blue;border: double;">Bắp Quốc Lợi BookStore</th>
<th style="text-align: center; text-shadow: 5px 5px 5px Blue;border: double;">Fresher</th>
<th style="text-align: center; text-shadow: 5px 5px 5px Blue;border: double;"><%=session.getAttribute("username")%></th>
<%}%>
</tr>

</table>
</form>
<div style="text-align: center;">
										 <%
      java.util.Date date = new java.util.Date();
  %> 
   <%--   <%=date.toString()%> --%> 
      <br>
<%@ page import="java.util.Date,java.text.*"%>
Now :
<%

  Date now = new Date();
  DateFormat df = new SimpleDateFormat(" HH:mm:ss dd-MM-yyyy ");
  DateFormat madh1 = new SimpleDateFormat(" HH:mm:ss.SSS");
%>
<%=df.format(now)%>
<%String thoigian = df.format(now);
String madh = madh1.format(now);
session.setAttribute("thoigian", thoigian);
session.setAttribute("madh", madh);
%>
</div>
</body>
</html>