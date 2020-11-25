package bean;

public class GioHangBean {
	private String maSach;
	private String tenSach;
	private String tacGia;
	private long gia;
	private long soLuong;
	private long thanhTien;
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(long soLuong) {
		this.soLuong = soLuong;
	}
	public long getThanhTien() {
		return soLuong*gia;
	}
	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
	}
	@Override
	public String toString() {
		return "GioHangBean [maSach=" + maSach + ", tenSach=" + tenSach + ", tacGia=" + tacGia + ", gia=" + gia
				+ ", soLuong=" + soLuong + ", thanhTien=" + thanhTien + "]";
	}
	public GioHangBean(String maSach, String tenSach, String tacGia, long gia, long soLuong) {
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.tacGia = tacGia;
		this.gia = gia;
		this.soLuong = soLuong;
		this.thanhTien = soLuong*gia;
	}
	
	
	

}
