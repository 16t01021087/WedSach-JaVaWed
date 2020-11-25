<%@page import="bo.GioHangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<%
GioHangBo gh =(GioHangBo)session.getAttribute("gh");
if(gh!=null){
	gh.Xoa(request.getParameter("ms"));
	session.setAttribute("gh", gh);
	if(gh.ds.size() ==0)
	response.sendRedirect("Sachcontroller");
	else
		response.sendRedirect("Giohangcontroller");
}
%>
</body>
</html>