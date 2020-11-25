package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.KhachHangBean;

public class KhachHangDao {
	DungChung dc = new DungChung();
	public ArrayList<KhachHangBean> khachHangDao(String makhachhang) throws Exception {
		ArrayList<KhachHangBean> ds = new ArrayList<KhachHangBean>();
		// b1: Ket noi vao csdl
				dc.KetNoi();
				// b2: Lay du lieu ve
				String sql = "SELECT makh, hoten, diachi, sodt, email,tendn,pass\r\n" + 
						"FROM     dbo.KhachHang\r\n" + 
						"WHERE  (makh = ?)";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				cmd.setString(1, makhachhang);
				ResultSet rs = cmd.executeQuery();
				// Lay du lieu ve
				while (rs.next()) {
					// Duyet qua tap du lieu de luu vao mang ds
					String makh = rs.getString("makh");
					String hoten = rs.getString("hoten");
					String diachi = rs.getString("diachi");
					String sodt = rs.getString("sodt");
					String email = rs.getString("email");
					String tendn = rs.getString("tendn");
					String pass = rs.getString("pass");
					ds.add(new KhachHangBean(makh, hoten, diachi, sodt, email,tendn,pass));
				}
				// b3: Dong ket noi
				rs.close();
				dc.cn.close();
		return ds;
	}

}
