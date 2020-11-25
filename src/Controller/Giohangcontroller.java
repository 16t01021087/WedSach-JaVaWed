package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.LoaiBean;
import bean.SachBean;
import bo.LoaiBo;
import bo.SachBo;

/**
 * Servlet implementation class Giohangcontroller
 */
@WebServlet("/Giohangcontroller")
public class Giohangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Giohangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			SachBo sbo = new SachBo();
			ArrayList<SachBean> ds;
			String ml =request.getParameter("ml");
			String key = request.getParameter("txttk");
			ds = sbo.getsach();
			if(ml!= null)
					ds =  sbo.TimMa(ml);
			else
				if(key!=null)
					ds = sbo.TimSach(key);
			int n = ds.size();
			LoaiBo LBo = new LoaiBo();
			ArrayList<LoaiBean> dsloai = LBo.getloai();
			request.setAttribute("dssach", ds);
			request.setAttribute("dsloai", dsloai);
			RequestDispatcher rd = request.getRequestDispatcher("GioHang.jsp");// khong hiển thị
			rd.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
