package bo;

import java.util.ArrayList;
import bean.GioHangBean;
public class GioHangBo {
	public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();
	
	public ArrayList<GioHangBean> themgiohang(String maSach, String tenSach, String tacGia, long gia, long soLuong)
	{
		for(GioHangBean g :ds)
		
			if(g.getMaSach().equals(maSach)) {
				g.setSoLuong(g.getSoLuong()+soLuong);
				return ds;
			}
		GioHangBean gh = new GioHangBean(maSach,tenSach,tacGia,gia,soLuong);
		ds.add(gh);
		return ds;
				
	}
	public void Xoa(String maSach) {
		for(GioHangBean g: ds)
			if(g.getMaSach().equals(maSach)) {
				ds.remove(g);
				return ;		
		
	}
	}
	public void cong(String maSach, int soLuong) {
		for(int i=0;i<ds.size();i++)
			if(ds.get(i).getMaSach().equals(maSach))
				ds.get(i).setSoLuong(soLuong+(int)ds.get(i).getSoLuong());
			return ;
	}
	public void tru(String maSach, int soLuong) {
		for(int i=0;i<ds.size();i++)
			if(ds.get(i).getMaSach().equals(maSach))
				ds.get(i).setSoLuong(soLuong-(int)ds.get(i).getSoLuong());
			return ;
	}
	public void Sua(String maSach, int soLuong) {
		for(int i=0;i<ds.size();i++)
			if(ds.get(i).getMaSach().equals(maSach))
				ds.get(i).setSoLuong(soLuong);
			return ;
	}
	public long Tong() {
		long s= 0;
		for(GioHangBean g:ds) {
			s+= g.getThanhTien();
		}
		return s;
	}
	
}
