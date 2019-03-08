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
 * Servlet implementation class ParentRegistration
 */
@WebServlet("/ParentRegistration")
public class ParentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;
	//private PreparedStatement ps1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParentRegistration() {
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
		String pid=request.getParameter("parentid");

		String pname=request.getParameter("name");

		String paddress=request.getParameter("address");

		String pphoneno=request.getParameter("phoneno");

		String pemail=request.getParameter("email");
		String ppass=request.getParameter("password");

		String date=request.getParameter("date");
		cn=CrudOperation.createConnection();
		String str="insert into parentdetails values (?,?,?,?,?,?)";
		int rw=0,row=0;
		try
		{  
			cn.setAutoCommit(false);
			ps=cn.prepareStatement(str);
			ps.setString(1, pid);
			ps.setString(2, pname);
			ps.setString(3, paddress);
			ps.setString(4, pphoneno);
			ps.setString(5, pemail);
			ps.setString(6, date);
			 row = ps.executeUpdate();
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		String str1="insert into logindetails values (?,?,?)";
		try
		{
			ps=cn.prepareStatement(str1);
			ps.setString(1, pid);
			ps.setString(2, ppass);
			ps.setString(3, "parent");
		 rw=ps.executeUpdate();	
		}
		catch(SQLException se)
		
		{
			System.out.println(se);
		}
		if(rw>0&&row>0)
		{
			try {
				cn.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("row is created");
			
			
		}
		
		// TODO Auto-generated method stub
		//doGet(request, response);
		// code for kidscamp

	}

}
