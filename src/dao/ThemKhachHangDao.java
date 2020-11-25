package dao;

import java.nio.charset.Charset;
import java.sql.PreparedStatement;
import java.util.Random;


public class ThemKhachHangDao {
	DungChung dc = new DungChung();
	
	public int themKhachHangDao(String makhachhang,String hoten, String diachi, String sodt, String email, String tendn,
			String pass) throws Exception{
		
		dc.KetNoi();
		String sql = "insert into KhachHang(makh,hoten,diachi,sodt,email,tendn,pass) values (?,?,?,?,?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		
		cmd.setString(1, makhachhang);
		cmd.setString(2, hoten);
		cmd.setString(3, diachi);
		cmd.setString(4, sodt);
		cmd.setString(5, email);
		cmd.setString(6, tendn);
		cmd.setString(7, pass);
		int kq = cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
	public void randomIDKhachHang() {
		byte[] array = new byte[7];
		new Random().nextBytes(array);
		String s = new String(array,Charset.forName("UTF-8"));
	}
	public int suaKhachHangDao(String pass, String matkhau, String hoten, String sodt,
			String diachi,String email) throws Exception{
		dc.KetNoi();
		int kq = 0;
		String sql = "update KhachHang set  pass =? , hoten=?, diachi=?, sodt=?,email=? where KhachHang =?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, pass);
		cmd.setString(2, hoten);
		cmd.setString(3, diachi);
		cmd.setString(4, sodt);
		cmd.setString(5, email);
		kq = cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}

}
