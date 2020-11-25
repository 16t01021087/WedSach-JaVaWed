<%@page import="bean.GioHangBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.GioHangBo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="TrangChu.jsp"%><br>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<% 

String ms =request.getParameter("ms");
String ts =request.getParameter("ts");
String tg =request.getParameter("tg");
String giatam =request.getParameter("gia");
 session.getAttribute("username");
if(username != null && !username.isEmpty())
{
if(ms!= null){
	GioHangBo gh;
	if(session.getAttribute("gh")==null){ // mua lần đầu
		gh = new GioHangBo();
		session.setAttribute("gh", gh);
	}
	gh = (GioHangBo)session.getAttribute("gh");
	gh.themgiohang(ms, ts,tg, Long.parseLong(giatam), 1);
	gh.Tong();
	session.setAttribute("gh", gh);
	response.sendRedirect("Giohangcontroller");	
}
}

%>
</body>
</html>