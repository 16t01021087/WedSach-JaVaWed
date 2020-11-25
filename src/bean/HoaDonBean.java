package bean;

public class HoaDonBean {
	private String mahd;
	private String hoten;
	private String diachi;
	private int soluong;
	private int gia;
	private String ngaymua;
	private String trangthai;
	public String getMahd() {
		return mahd;
	}
	public void setMahd(String mahd) {
		this.mahd = mahd;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(String ngaymua) {
		this.ngaymua = ngaymua;
	}
	public String getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}
	@Override
	public String toString() {
		return "HoaDonBean [mahd=" + mahd + ", hoten=" + hoten + ", diachi=" + diachi + ", soluong=" + soluong
				+ ", gia=" + gia + ", ngaymua=" + ngaymua + ", trangthai=" + trangthai + "]";
	}
	public HoaDonBean(String mahd, String hoten, String diachi, int soluong, int gia, String ngaymua,
			String trangthai) {
		super();
		this.mahd = mahd;
		this.hoten = hoten;
		this.diachi = diachi;
		this.soluong = soluong;
		this.gia = gia;
		this.ngaymua = ngaymua;
		this.trangthai = trangthai;
	}
	public HoaDonBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
