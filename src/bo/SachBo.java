package bo;

import java.util.ArrayList;

import bean.SachBean;
import dao.SachDao;

public class SachBo {
	SachDao sdao = new SachDao();
	ArrayList<SachBean> ds;
	public ArrayList<SachBean> getsach() throws Exception{
		ds =sdao.getsach();
		return ds;
	}
	public ArrayList<SachBean> TimMa(String maLoai) {
		ArrayList<SachBean> tam = new ArrayList<SachBean>();
			for(SachBean s:ds) {
				if(s.getMaLoai().equalsIgnoreCase(maLoai))
					tam.add(s);
			}
			return tam;
		
	}
	public ArrayList<SachBean> TimSach(String key) {
		ArrayList<SachBean> tam = new ArrayList<SachBean>();
		for(SachBean s:ds) {
			if(s.getTenSach().toLowerCase().contains(key.toLowerCase())
				|| s.getTacGia().toLowerCase().contains(key.toLowerCase()) )
				tam.add(s);
		}
		return tam;
	}
	
}
