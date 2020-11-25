package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.KTTKBo;


/**
 * Servlet implementation class DangNhapController
 */
@WebServlet("/DangNhapController")
public class DangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangNhapController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String quyen = (String) request.getParameter("quyen");
			String password = (String) request.getParameter("password");
			String username = (String) request.getParameter("username");
			String nd = "nguoidung";
			System.out.println("quyen =" + quyen);
			System.out.println("pass =" + password);
			System.out.println("user =" + username);

			if (password != null && !password.isEmpty() && username != null && !username.isEmpty()) {
				KTTKBo kt = new KTTKBo();
				if (quyen.equals(nd)) {
					if (kt.ktTaiKhoanUser(username, password)) { 
						HttpSession session = request.getSession();
						session.setAttribute("username", username);
						RequestDispatcher rd = request.getRequestDispatcher("Sachcontroller");
						rd.forward(request, response);
					} else {
						// đoạn dưới ko có gì lỗi
						System.out.println("Kiem ta tai khoa user khong thanh cong");
						RequestDispatcher rd = request.getRequestDispatcher("dangnhap2.jsp");
						rd.forward(request, response);
					}
				} else {
					System.out.println("chua co tk amin");
					RequestDispatcher rd = request.getRequestDispatcher("dangnhap2.jsp");
					rd.forward(request, response);
				}
			} else {
				// Nó foward ở đây rồi.
				System.out.println("pass or user null");
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap2.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println("ngoai le - ");
			System.out.println("loi : " + e.getMessage());
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("dangnhap2.jsp");
			rd.forward(request, response);
		}
	}

}
