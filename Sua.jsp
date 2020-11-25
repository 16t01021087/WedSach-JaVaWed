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
	String ms = request.getParameter("ms");
	String sltam = request.getParameter("txts1");
	if(ms!=null){
		GioHangBo gh = (GioHangBo)session.getAttribute("gh");
			gh.Sua(ms, Integer.parseInt(sltam));
			session.setAttribute("gh", gh);
			response.sendRedirect("Giohangcontroller");
		}
%>
</body>
</html>