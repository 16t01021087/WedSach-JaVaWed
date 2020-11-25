package bo;

import dao.KTTKDao;

public class KTTKBo {
	
KTTKDao kt = new KTTKDao();

public boolean ktTaiKhoanUser(String username, String password) throws Exception{
	// TODO Auto-generated method stub
	return kt.ktTaiKhoanUser(username,password);
}
}
