package bo;

import java.util.ArrayList;

import bean.LoaiBean;
import bean.SachBean;
import dao.LoaiDao;
import dao.SachDao;
public class LoaiBo {
	LoaiDao ldao = new LoaiDao();
	SachDao sdao= new SachDao();
	ArrayList<LoaiBean> dt;
	ArrayList<SachBean> ds;
	public ArrayList<LoaiBean> getloai() throws Exception{
		dt =ldao.getloai();
		return dt;
}

}
