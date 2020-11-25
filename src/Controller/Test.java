package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.connector.Request;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// tao ra doi tuong out
//	PrintWriter out = response.getWriter();
//	out.print("<html><body>Alo</body></html>");
//	HttpSession session = request.getSession();
//	session.setAttribute("tam", "haha");
//		response.sendRedirect("maytinh.jsp");
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());	
		String txta = request.getParameter("txta");
		String txtb = request.getParameter("txtb");
		String butcong = request.getParameter("butcong");
		String buttru = request.getParameter("buttru");
		String butnhan = request.getParameter("butnhan");
		String butchia = request.getParameter("butchia");
		double a,b, kq = 0;
		if(butcong != null || buttru != null || butnhan != null || butchia != null)
			try{
				a = Double.parseDouble(txta);
				b = Double.parseDouble(txtb);
				
					if(butcong != null){
						kq = a+b;
						
					}
					else if(buttru != null){
						kq = a-b;
						
					}
						else if(butnhan != null){
							kq = a*b;
							
						}
							else if(butchia != null){
							         if(b != 0)
							         {
							        	 kq = a/b;
										 
							         }else{
							        	 System.out.println("Không Thể Chia Được Cho Không - Xin Mời Nhập Lại!!");
							         }
							       
							         
								
							
							}
					 request.setAttribute("kq", kq);
					 request.setAttribute("a", a);
					 request.setAttribute("b", b);
			}	
			catch(Exception e){
				System.out.println("Ô a hoặc b không được để trống xin mời nhập lại!");
			}
		RequestDispatcher rd = request.getRequestDispatcher("maytinh2.jsp");
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
