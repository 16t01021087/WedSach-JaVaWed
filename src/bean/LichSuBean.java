package bean;

public class LichSuBean {
	private String makh;
	private String tendn;
	public String getMakh() {
		return makh;
	}
	public void setMakh(String makh) {
		this.makh = makh;
	}
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	@Override
	public String toString() {
		return "LichSuBean [makh=" + makh + ", tendn=" + tendn + "]";
	}
	public LichSuBean(String makh, String tendn) {
		super();
		this.makh = makh;
		this.tendn = tendn;
	}
	public LichSuBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
