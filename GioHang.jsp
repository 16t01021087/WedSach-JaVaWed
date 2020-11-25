<%@page import="bean.GioHangBean"%>
<%@page import="bo.GioHangBo"%>
<%@page import="bean.SachBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.SachBo"%>
<%@page import="bo.LoaiBo"%>
<%@page import="bean.LoaiBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%@include file="header.jsp"%><br>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<style type="text/css">.table&amp;amp;gt;tbody&amp;amp;gt;tr&amp;amp;gt;td, .table&amp;amp;gt;tfoot&amp;amp;gt;tr&amp;amp;gt;td {  
vertical-align: middle;
}
 
@media screen and (max-width: 600px) { 
table#cart tbody td .form-control { 
width:20%; 
display: inline !important;
} 
 
.actions .btn { 
width:36%; 
margin:1.5em 0;
} 
 
.actions .btn-info { 
float:left;
} 
 
.actions .btn-danger { 
float:right;
} 
 
table#cart thead {
display: none;
} 
 
table#cart tbody td {
display: block;
padding: .6rem;
min-width:320px;
} 
 
table#cart tbody tr td:first-child {
background: #333;
color: #fff;
} 
 
table#cart tbody td:before { 
content: attr(data-th);
font-weight: bold; 
display: inline-block;
width: 8rem;
} 
 
table#cart tfoot td {
display:block;
} 
table#cart tfoot td .btn {
display:block;
}
}</style>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
  ArrayList<SachBean>   ds   = (ArrayList<SachBean>) request.getAttribute("dssach");
  int n = ds.size();
%>
	<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:15%">Mã Sách</th> 
    <th style="width:15%">Tên Sách</th> 
    <th style="width:15%">Tác Giả</th> 
    <th style="width:10%">Số Lượng </th> 
     <th style="width:1%"> </th> 
      <th style="width:1%"> </th> 
       <th style="width:1%"> </th> 
    <th style="width:15%">Giá</th> 
    <th style="width:15%" >Thành tiền</th> 
    <th style="width:10%"> </th> 
   </tr>
   <tr>
		<%
			GioHangBo gh = (GioHangBo)session.getAttribute("gh");
		if(gh!=null){
			for(GioHangBean g: gh.ds){ %>
			<tr>	<td> <%=g.getMaSach() %></td>
					<td> <%=g.getTenSach() %></td>
					<td> <%=g.getTacGia() %></td>
					<td> <%=g.getSoLuong() %></td>
					<td>
			<form action="Sua.jsp?ms=<%=g.getMaSach()%>" method="post">
			<td>
			<input type="number" name="txts1"> <br>
			</td>
			<td>
			<input type="submit" name="but1" value= "Update">
			</td>
			</form>
			</td>
					<td> <%=g.getGia() %>	</td>
					<td> <%=g.getThanhTien() %></td>
					<td> <a href="Xoa.jsp?ms=<%= g.getMaSach() %>">
					<p> <b>	Trả Lại </b></p>
					</a> </td>
					
			</tr>	
	<% 	
		}
		}
		%>
	
 
	</tr>
  </thead> 
    <tr> 
    <td><a href="Sachcontroller" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center"><strong>Tổng tiền: </strong>
	<td><%=gh.Tong() %> </td>
    </td> 
    <%if (username != null){ %>
    <td><a href="LichSuController" class="btn btn-success btn-block">Thanh Toán<i class="fa fa-angle-right"></i></a></td>
   	<%}else { %>
   	<td><a href="DangNhapController" class="btn btn-success btn-block">Thanh Toán<i class="fa fa-angle-right"></i></a>
   	<%} %>
    </td> 
   </tr> 
 </table>
</div>
<%@include file="footer.jsp" %>
</body>
</html>