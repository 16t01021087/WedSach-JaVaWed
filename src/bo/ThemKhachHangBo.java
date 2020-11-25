package bo;

import dao.ThemKhachHangDao;

public class ThemKhachHangBo {
	ThemKhachHangDao tkhdao = new ThemKhachHangDao();


public int themKhachHangBo(String makhachhang,String hoten, String diachi, String sodt, String email, String tendn,
		String pass) throws Exception {
	return tkhdao.themKhachHangDao(makhachhang,hoten,diachi,sodt,email,tendn,pass);
	
}
public int suaKhachHangBo(String pass, String matkhau, String hoten, String sodt,
		String diachi,String email) throws Exception {
	return tkhdao.suaKhachHangDao(pass,matkhau,hoten,sodt,diachi,email);
	
}
}