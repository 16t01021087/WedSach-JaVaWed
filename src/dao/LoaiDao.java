package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.LoaiBean;
public class LoaiDao {

	public ArrayList<LoaiBean> getloai() throws Exception{
		ArrayList<LoaiBean> ds = new ArrayList<LoaiBean>();
		//b1: kêt nối vào csdl
		DungChung dc = new DungChung();
		dc.KetNoi();
		//b2 : thiết lập câu lệnh sql
		String sql = "select * from loai";
		//b3: cho thực hiện câu lệnh
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs =cmd.executeQuery();
		//b4: duyệt qua các loai và lưu vào ds
		while(rs.next()) {
			String maLoai = rs.getString("maLoai");
			String tenLoai = rs.getString("tenLoai");
			LoaiBean loai = new LoaiBean(maLoai,tenLoai);
			ds.add(loai);
		} rs.close(); dc.cn.close();
		
		return ds;
	}

}
