<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng ký</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/templates/auth/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/auth/css/main.css">
<!--===============================================================================================-->
<body>
<%@include file="header.jsp" %>
<head>
	<title>Contact V7</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/templates/khachhang/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/khachhang/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form role="form" class="contact100-form validate-form matchpass"  action="CheckDKController" method="post">
				<span class="contact100-form-title">
					Đăng ký
				</span>
				<label>Mã Khách Hàng</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="makhachhang" type="text" name="makhachhang" placeholder="Mã Khách Hàng">
				</div>
				<label>Tên Đăng Nhập</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="tendn" type="text" name="tendn" placeholder="Tên Đăng Nhập">
				</div>
				<label>Mật khẩu</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="pass" type="password" name="pass" placeholder="Mật Khẩu">
				</div>
				<label>Nhập lại mật khẩu</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="nlpass" type="password" name="nlpass" placeholder="Nhập lại mật khẩu" onchange="matchpass();">
				</div>
				<label>Họ tên</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="hoten" type="text" name="hoten" placeholder="Họ tên">
				</div>
				<label>Số điện thoại</label>
				<div class="wrap-input100 validate-input" data-validate = "Số điện thoại của bạn hợp lệ!">
					<input class="input100" id="sodt" type="text" name="sodt" placeholder="Số điện thoại" pattern="[0]{1}[39,38,37,36,35,34,32,98,97,96,86]{2}[0-9]{7}">
				</div>
				
				<label>Địa chỉ</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="diachi" type="text" name="diachi" placeholder="Địa chỉ">
				</div>
				<label>Email</label>
				<div class="wrap-input100 validate-input" data-validate = "Vui lòng không để trống">
					<input class="input100" id="email" type="text" name="email" placeholder="Email">
				</div>
				<div>
                </div>
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							Đăng ký
						</button>
					</div>
				</div>
			</form>
		</div>
		<marquee id="marq" scrollamount="10" direction="right" loop="100" scrolldelay="3" behavior="Alternate" onmouseover="this.stop()" onmouseout="this.start()">
				<a href="#"><img src="1.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
				<a href="#"><img src="2.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
				<a href="#"><img src="4.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
				<a href="#"><img src="2.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
				<a href="#"><img src="3.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
				<a href="#"><img src="1.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
				<a href="#"><img src="5.jpg" title="Ghi chú cho ảnh" width="200" height="250"/> </a>
			</marquee>
	</div>
<script type="text/javascript">
      
        	function checkEmail() { 
        	    var email = document.getElementById('email'); 
        	    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
        	    if (!filter.test(email.value)) { 
        	             alert('Hay nhap dia chi email hop le.\nExample@gmail.com');
        	             email.focus; 
        	             return false; 
        	    }else{ 
        	             alert('OK roi day, Email nay hop le.'); 
        	    } 
        	} 
        	
        	 
</script>
<script type="text/javascript">  

           function matchpass(){  
                var firstpassword=document.getElementById('pass').value;
                var secondpassword=document.getElementById('nlpass').value; 
                if(firstpassword!=secondpassword){  
                	alert("Nhập lại mật khẩu đúng!");  //roi do. vãi
                }
                }  
</script>  
  


<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/daterangepicker/moment.min.js"></script>
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath() %>/templates/khachhang/js/main.js"></script>
<%@include file="footer.jsp" %>

</body>

<div style="margin-bottom: 100px"></div>


</html>