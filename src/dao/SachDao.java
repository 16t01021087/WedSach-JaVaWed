package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.SachBean;

public class SachDao {
	public ArrayList<SachBean> getsach() throws Exception{
		ArrayList<SachBean> ds = new ArrayList<SachBean>();
		//b1: kêt nối vào csdl
		DungChung dc = new DungChung();
		dc.KetNoi();
		//b2 : thiết lập câu lệnh sql
		String sql = "select * from sach";
		//b3: cho thực hiện câu lệnh
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs =cmd.executeQuery(); 
		//b4: duyệt qua các loai và lưu vào ds
		while(rs.next()) {
			String maSach = rs.getString("maSach");
			String tenSach = rs.getString("tenSach");
		    String tacGia = rs.getString("tacGia");
		   long gia		= rs.getLong("gia");
		   String anh	= rs.getString("anh");
		   String maLoai = rs.getString("maloai");
		   SachBean sach = new SachBean(maSach, tenSach, tacGia, gia, anh, maLoai);
		   ds.add(sach);
		}rs.close(); dc.cn.close();
		
		return ds;
	}
}
