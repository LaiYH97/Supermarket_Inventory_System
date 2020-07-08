package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserLoginServlet extends HttpServlet {

	  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String driverName = "com.mysql.jdbc.Driver";
	        String userName = "root";
	        String userPwd = "123456";
	        String dbName = "jxcsystem";
	        String url1 = "jdbc:mysql://localhost:3306/" + dbName;
	        String url2 = "?user=" + userName + "&password=" + userPwd;
	        String url3 = "&useUnicode=true&characterEncoding=UTF-8";
	        String url = url1 + url2 + url3;
	        String UserName = request.getParameter("userName");
	        String UserPwd = request.getParameter("userPsw");
	        System.out.println("Username=" + UserName + ",Password=" + UserPwd);

	        // Connection conn1 = DBConnect.getDBConnection();

	        RequestDispatcher dis = null;
	        try {
	            Class.forName(driverName);
	            Connection conn = DriverManager.getConnection(url);
	            String sql = "select *from user where(userName=? and userPsw=?)";
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, UserName);
	            pstmt.setString(2, UserPwd);
	            ResultSet rs = pstmt.executeQuery();

	            response.setCharacterEncoding("UTF-8");
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();


	            if (rs.next()) {
	                if (rs != null) rs.close();
	                if (conn != null) conn.close();
	                if (pstmt != null) pstmt.close();
 
	                out.print("<script>alert('µÇÂ¼³É¹¦!');window.location.href='Main.jsp'</script>");
	                dis = request.getRequestDispatcher("Main.jsp");
	                dis.forward(request, response);
	            }
	            else {
	                if (rs != null) rs.close();
	                if (conn != null) conn.close();
	                if (pstmt != null) pstmt.close();

	                out.print("<script>alert('µÇÂ¼Ê§°Ü!');window.location.href='Error.jsp'</script>");
	                dis = request.getRequestDispatcher("Error.jsp");
	                dis.forward(request, response);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request,response);

	    }

}
