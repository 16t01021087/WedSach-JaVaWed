package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.ThemKhachHangBo;
import dao.KhachHangDao;


/**
 * Servlet implementation class CheckDKController
 */
@WebServlet("/CheckDKController")
public class CheckDKController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDKController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String makhachhang = (String) request.getParameter("makhachhang");
			String pass = (String) request.getParameter("pass");
			String nlpass = (String) request.getParameter("nlpass");
			String tendn = (String) request.getParameter("tendn");
			String hoten = (String) request.getParameter("hoten");
			String diachi = (String) request.getParameter("diachi");
			String sodt = (String) request.getParameter("sodt");
			String email = (String) request.getParameter("email");
			
			if(pass.equals(nlpass)) {
				ThemKhachHangBo tkh = new ThemKhachHangBo();
				tkh.themKhachHangBo(makhachhang,hoten,diachi,sodt,email,tendn,pass);
				RequestDispatcher rd = request.getRequestDispatcher("Sachcontroller");
				rd.forward(request, response);
			}else {
			response.sendRedirect("dangky.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
