package Controller;

import dao.Connect_jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Connect_jdbc;

/**
 * Servlet implementation class LoginPageServlet
 */
@WebServlet("/LoginPageServlet")
public class LoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginPageServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
		try {
			if(username.equals("123456") && password.equals("admin@123")) {
				response.sendRedirect("/03_AIRLINE_AMS/Admin/admin.jsp");
			}
//			else {
//				Connection con = Connect_jdbc.getConnection();
//				String sql = "select * from customer where username=? and password=?";
//				PreparedStatement ps = con.prepareStatement(sql);
//				ps.setString(1, username);
//				ps.setString(2, password);
//				ResultSet rs = ps.executeQuery();
//				
//				if(rs.next()) {
//					response.sendRedirect("/03_AIRLINE_AMS/index.jsp");
//				} else {
//					out.println("<html><body>");
//					out.println("<h3>Invalid<h3>");
//					out.println("<a href=/03_AIRLINE_AMS/login/login.jsp>Try Again</a>");
//					out.println("</body></html>");
//				}
//				response.sendRedirect("index.jsp");
//				
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
