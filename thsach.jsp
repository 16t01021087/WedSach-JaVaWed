<%@page import="bean.SachBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.SachBo"%>
<%@page import="bo.LoaiBo"%>
<%@page import="bean.LoaiBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html >
<head>
<title>Trang chủ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>
<%@include file="header.jsp"%><br>
<marquee id="marq" scrollamount="6" direction="left" loop="50" scrolldelay="0" behavior="Alternate" onmouseover="this.stop()" onmouseout="this.start()">
 <h1 style="text-shadow: 5px 5px 5px yellow;color: red">Chào mừng quý khách hàng đến với 
Bắp Quốc Lợi BookStore</h1>
</marquee> 
<div style="background-color: #D0F5A9">
<marquee id="marq" scrollamount="10" direction="right" loop="100" scrolldelay="3" behavior="Alternate" onmouseover="this.stop()" onmouseout="this.start()">
<a href="#"><img src="image_sach/b17.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
<a href="#"><img src="image_sach/b18.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
<a href="#"><img src="image_sach/b20.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
<a href="#"><img src="image_sach/b21.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
<a href="#"><img src="image_sach/b1.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
<a href="#"><img src="image_sach/b11.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
</marquee>
</div>
<br>
<% ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
   ArrayList<SachBean>     ds = (ArrayList<SachBean>) request.getAttribute("dssach");
	int n = ds.size();
%>
<table max-width = "1000" align ="center">
	<td valign="top" max-width="400">
		<table class="table table-border table-hover">
			<%for(LoaiBean l: dsloai) {%>
				
			<tr><td>
			<a href="Sachcontroller?ml=<%= l.getMaLoai() %>">
				<%=l.getTenLoai() %></a>
			</td></tr>
			<%} %>
		</table>
	</td>
	<td valign="top" max-width="600">
		<table>

	<%for(int i=0;i<n;i++){ %>
	<tr>
		<td>
		<% SachBean ss= ds.get(i); %>
			 <img  src="<%= ds.get(i).getAnh() %>"> <br>
			<b> Tên Sách: <%= ds.get(i).getTenSach() %> <br> </b>
			<b> Tác Giả: <%= ds.get(i).getTacGia() %><br></b>
			<b> Giá: <%= ds.get(i).getGia() %>đ <br></b>
			<a href="DatMua.jsp?ms=<%=ss.getMaSach()%>&ts=<%=ss.getTenSach()%>
			&tg=<%=ss.getTacGia()%>&gia=<%=ss.getGia()%>"> <img  src="6.jpg"></a>
			
		</td>
		<%i++;if(i<n){ ss= ds.get(i); %>
		<td>
			<img  src="<%= ds.get(i).getAnh() %>"> <br>
			<b> Tên Sách: <%= ds.get(i).getTenSach() %> <br></b>
			<b> Tác Giả: <%= ds.get(i).getTacGia() %><br></b>
			<b> Giá: <%= ds.get(i).getGia() %>đ <br></b>
			<a href="DatMua.jsp?ms=<%=ss.getMaSach()%>&ts=<%=ss.getTenSach()%>
			 &tg=<%=ss.getTacGia()%>&gia=<%=ss.getGia()%>"><img  src="6.jpg"></a>
		</td>
		<%} %>
		<%i++;if(i<n){ ss= ds.get(i); %>
		<td>
			<img  src="<%= ds.get(i).getAnh() %>"> <br>
			<b> Tên Sách: <%= ds.get(i).getTenSach() %> <br></b>
			<b> Tác Giả: <%= ds.get(i).getTacGia() %><br></b>
			<b> Tác Giả: <%= ds.get(i).getGia() %>đ <br></b>
			<a href="DatMua.jsp?ms=<%=ss.getMaSach()%>&ts=<%=ss.getTenSach()%>
			 &tg=<%=ss.getTacGia()%>&gia=<%=ss.getGia()%>"><img  src="6.jpg"></a>
		</td>
		<%} %>
	</tr>
	
		
	
	<%} %>
	</table>
	</td>

							

</table>
<%@include file="footer.jsp" %>
</body>
</html>