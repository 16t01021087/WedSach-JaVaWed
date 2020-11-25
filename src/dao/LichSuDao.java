package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.HoaDonBean;

public class LichSuDao {
	DungChung dc = new DungChung();
	
	public ArrayList<HoaDonBean> lichsuDao(String makhachhang) throws Exception {
		ArrayList<HoaDonBean> ds = new ArrayList<HoaDonBean>();
		dc.KetNoi();
		String sql = " SELECT        hoadon.MaHoaDon, KhachHang.hoten, KhachHang.diachi, ChiTietHoaDon.SoLuongMua, sach.gia, hoadon.NgayMua, hoadon.damua\r\n" + 
				"FROM            hoadon INNER JOIN\r\n" + 
				"                         KhachHang ON hoadon.makh = KhachHang.makh INNER JOIN\r\n" + 
				"                         ChiTietHoaDon ON hoadon.MaHoaDon = ChiTietHoaDon.MaHoaDon INNER JOIN\r\n" + 
				"                         sach ON ChiTietHoaDon.MaSach = sach.masach" + 
				"WHERE   (KhachHang.makh = ?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1,makhachhang );
		ResultSet rs = cmd.executeQuery();
		// Lay du lieu ve
		while (rs.next()) {
			// Duyet qua tap du lieu de luu vao mang ds
			String mahd = rs.getString("MaHoaDon");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			int soluong = rs.getInt("SoLuongMua");
			int gia = rs.getInt("gia");
			String ngaymua = rs.getString("NgayMua");
			String trangthai = rs.getString("damua");
			ds.add(new HoaDonBean(mahd,hoten,diachi,soluong,gia,ngaymua,trangthai));
		}
		// b3: Dong ket noi
		rs.close();
		dc.cn.close();
		return ds;
	}
}
