
<%@page import="bean.HoaDonBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Lịch sử mua hàng</title>
<body>
	<%@include file="header.jsp"%>
<head>
<title>Lịch sử mua hàng</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/templates/khachhang/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/css/util.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/khachhang/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="container-contact100">
		<form class="contact100-form validate-form">
			<span class="contact100-form-title"
				style="text-align: center; color: red;"> Lịch sử mua hàng </span>

			<table class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<tbody>
					<tr>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;color: purple"><h5>Họ Tên
								lượng</h5></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;color: purple"><h5>Số Lượng </h5></td>
						<td class="center"
							style="width: 200px; height: 100px; text-align: center;color: purple"><h5>Đơn Giá</h5></td>
						<td class="center"
							style="width: 200px; height: 100px; text-align: center;color: purple"><h5>Địa chỉ đặt</h5></td>
						<td class="center"
							style="width: 200px; height: 100px; text-align: center;color: purple"><h5>Ngày Mua</h5></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;color: purple"><h5>Tổng
								tiền</h5></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;color: purple"><h5>Trạng
								thái</h5></td>

					</tr>
<%ArrayList<HoaDonBean> ds = (ArrayList)request.getAttribute("ds"); %>
<div class="row" style="margin: auto;">
		<%if(ds !=null)
   for(HoaDonBean g:ds){ %>
                     <tr>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getHoten() %></h6></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getSoluong() %></h6></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getGia() %></h6></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getDiachi() %></h6></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getNgaymua() %></h6></td>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getSoluong()*g.getGia() %></h6></td>
							<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6><%=g.getTrangthai() %></h6></td>
						<%if(g.getTrangthai()==null){ %>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6>Chưa thanh toán</h6></td>
						<%}else{ %>
						<td class="center"
							style="width: 150px; height: 100px; text-align: center;"><h6>Đã thanh toán</h6></td>	
                        <%} %>
					</tr>
                                      <%
											}
										%>
				</tbody>
			</table>
		</form>





	</div>
	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/bootstrap/js/popper.js"></script>
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/templates/khachhang/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>

</body>

<div style="margin-bottom: 100px"></div>
<%@include file="footer.jsp"%>

</html>