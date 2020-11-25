package bo;

import java.util.ArrayList;

import bean.HoaDonBean;
import dao.LichSuDao;

public class LichSuBo {

	LichSuDao lsdao = new LichSuDao();
	
	public ArrayList<HoaDonBean> lichsuBo(String makhachhang) throws Exception {
		
		return lsdao.lichsuDao(makhachhang);
		
	}
}
