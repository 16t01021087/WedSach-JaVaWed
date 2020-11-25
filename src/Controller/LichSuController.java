package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import bean.HoaDonBean;
import bo.LichSuBo;

/**
 * Servlet implementation class LichSuController
 */
@WebServlet("/LichSuController")
public class LichSuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			HttpSession session  = request.getSession();
			
			String makhachhang = (String)session.getAttribute("makh");
			LichSuBo lsb = new LichSuBo();
			ArrayList<HoaDonBean> ds;
			ds = lsb.lichsuBo(makhachhang);
			request.setAttribute("ds",ds );
			RequestDispatcher rd = request.getRequestDispatcher("LichSuMuaHang.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			RequestDispatcher rd =request.getRequestDispatcher("LichSuMuaHang.jsp");
			rd.forward(request, response);
		}
	}

}
