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
@WebServlet("/CampOrganizerRegistration")
public class CampOrganizerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;
	//private PreparedStatement ps1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CampOrganizerRegistration() {
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
		String cid=request.getParameter("campid");

		String cname=request.getParameter("name");

		String caddress=request.getParameter("address");

		String cphoneno=request.getParameter("phoneno");

		String cemail=request.getParameter("email");
		String cpass=request.getParameter("password");

		String date=request.getParameter("date");
		String desc=request.getParameter("desc");
		
		cn=CrudOperation.createConnection();
		String str="insert into camporganizerdetails values (?,?,?,?,?,?,?)";
		int rw=0,row=0;
		try
		{  
			cn.setAutoCommit(false);
			ps=cn.prepareStatement(str);
			ps.setString(1, cid);
			ps.setString(2, cname);
			ps.setString(3, caddress);
			ps.setString(4, cphoneno);
			ps.setString(5, cemail);
			ps.setString(6, date);
			ps.setString(7, desc);
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
			ps.setString(1, cid);
			ps.setString(2, cpass);
			ps.setString(3, "camporganizer");
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
