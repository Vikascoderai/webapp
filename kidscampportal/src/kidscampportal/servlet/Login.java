package kidscampportal.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kidscampportal.dbutils.CrudOperation;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement pslogin;
	private ResultSet rs;
	
   
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String ui=request.getParameter("txtuserid");
		String upass=request.getParameter("txtuserpass");
	System.out.println(ui); 
	System.out.println(upass);
	cn=CrudOperation.createConnection();
	String strsql="select * from logindetails where userid=? and userpass=?";
	try
	{
		pslogin=cn.prepareStatement(strsql);
		pslogin.setString(1,ui);
		pslogin.setString(2,upass);
		rs=pslogin.executeQuery();
		if (rs.next())
			
		{
			HttpSession hs=request.getSession();//created new session everytime
			hs.setAttribute("userkey", ui);
			
			String utype=rs.getString("usertype");
			if(utype.equals("parent"))
			{
				response.sendRedirect("/kidscampportal/jsp/parenthome.jsp");
			}
			if(utype.equals("admin"))
			{
				response.sendRedirect("/kidscampportal/jsp/adminhome.jsp");
			}
			if(utype.equals("camporganizer"))
			{
				response.sendRedirect("/kidscampportal/jsp/organizerhome.jsp");
			}		
		}
		else
		{
			
			request.setAttribute("ms", "invalid userid and password");
			RequestDispatcher rd=request.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(request, response);
			
		}
		
	}
catch(SQLException se)
	{
	System.out.println(se);
	}
	}

}
