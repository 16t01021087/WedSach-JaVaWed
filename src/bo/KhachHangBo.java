package bo;

import java.util.ArrayList;

import bean.KhachHangBean;
import dao.KhachHangDao;


public class KhachHangBo {
	KhachHangDao khdao = new KhachHangDao();
	
	public ArrayList<KhachHangBean> khachHangBo(String makhachhang) throws Exception{
		// TODO Auto-generated method stub
		
		return khdao.khachHangDao(makhachhang);
	}
}
