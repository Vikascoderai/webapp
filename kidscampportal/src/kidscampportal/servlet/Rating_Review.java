package kidscampportal.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kidscampportal.dbutils.CrudOperation;

import java.sql.*;

/**
 * Servlet implementation class Rating_Review
 */
@WebServlet("/Rating_Review")
public class Rating_Review extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rating_Review() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		cn=CrudOperation.createConnection();
		String oid=request.getParameter("oid");
		String pid=request.getParameter("pid");
		String rating=request.getParameter("rating");
		String uid=request.getParameter("uid");
		String date=request.getParameter("date");
		String review=request.getParameter("review");
		String strins="insert into rating values (?,?,?,?,?,?)";
		try {
			ps=cn.prepareStatement(strins);
			ps.setString(1, oid);
			ps.setString(2, pid);
			ps.setString(3, rating);
			ps.setString(4, uid);
			ps.setString(5, date);
			ps.setString(6, review);
			int row=ps.executeUpdate();
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		int row = 0;
		if(row>0)
		{
			System.out.println("row is inserted");
		}
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
