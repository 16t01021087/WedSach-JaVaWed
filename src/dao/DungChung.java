package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		//b1: xác nhận hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		//b2 : kết nối
		String url = "jdbc:sqlserver://DESKTOP-FF1278R\\SQLEXPRESS:1433;databaseName=QlSach;user=sa;password=123";
		cn = DriverManager.getConnection(url);
		System.out.println("Da Ket Noi");
	}
}
