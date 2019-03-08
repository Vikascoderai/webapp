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
@WebServlet("/Uploadjobs")
public class Uploadjobs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uploadjobs() {
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
		String jid=request.getParameter("jobid");
		String oid=request.getParameter("ozid");
		String pname=request.getParameter("pname");
		String nos=request.getParameter("nos");
		String ldate=request.getParameter("ldate");
		String pdate=request.getParameter("pdate");
		String desc=request.getParameter("desc");
		String strins="insert into jobdescription values (?,?,?,?,?,?,?)";
		
		try {
			ps=cn.prepareStatement(strins);
			ps.setString(1, jid);
			ps.setString(2, oid);
			ps.setString(3, pname);
			ps.setString(4, nos);
			ps.setString(5, ldate);
			ps.setString(6, pdate);
			ps.setString(7, desc);
			int row=ps.executeUpdate();
			if(row>0)
			{
				System.out.println("row is inserted");
			}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		
	
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
