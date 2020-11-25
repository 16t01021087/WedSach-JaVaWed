<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.navbar a2 {
  float: right;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}
.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #000;
}

.active {
  background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
</style>
<body>
<%String username = (String)session.getAttribute("username"); %>
<%if (username != null){ %>
<div class="navbar">
  <a class="active" href="Sachcontroller"><i class="fa fa-fw fa-home"></i> Trang chủ</a> 
  <a href="Giohangcontroller"><i class="fa fa-cart-plus"></i> Giỏ hàng</a> 
  <a href="LichSuController"><i class="fa fa-list-ul"></i> Lịch Sử Mua Hàng</a> 
  <td>
  <form action="Sachcontroller">
  <input  id="timkiem" type="text" name="txttk" style="margin-left: 0,5%" placeholder="          Tìm kiếm...">
  <a></a><input type="submit" name="but1" value= "Search"></a>
    </form>
    </td>
  <a href="ThongTinCaNhanController"><i class="fa fa-fw fa-user"></i> <%=username %></a> 
  <a href="DangXuatController"><i class="fa fa-user-times"></i> Đăng xuất</a>
</div>
<%}else{ %>
<div class="navbar">
  <a class="active" href="Sachcontroller"><i class="fa fa-fw fa-home"></i> Trang chủ</a> 
  <a href="Giohangcontroller"><i class="fa fa-cart-plus"></i> Giỏ hàng</a> 
   <input  id="timkiem" type="text" name="txttk" style="margin-left: 55%" placeholder="          Tìm kiếm...">
  <a href="Sachcontroller"><i class="fa fa-fw fa-search"></i></a>  
  <a href="DangNhapController"><i class="fa fa-fw fa-user"></i> Đăng nhập</a> 
  <a href="DangKyController"><i class="fa fa-user-plus"></i> Đăng ký</a>
 </div>
<%} %>
</body>
</html> 