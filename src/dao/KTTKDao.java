package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class KTTKDao {

	public boolean ktTaiKhoanUser(String username, String password) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "SELECT tendn, pass\r\n" + 
				"FROM     dbo.KhachHang\r\n" + 
				"WHERE  (tendn = ?) AND (pass = ?) "; // được rồi sai lệnh// khổ :D 
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, username);
		cmd.setString(2, password);
		ResultSet rs = cmd.executeQuery();
		boolean kq = rs.next();
		rs.close();
		dc.cn.close();
		return kq;
	}
}
