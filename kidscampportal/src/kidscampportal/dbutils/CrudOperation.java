package kidscampportal.dbutils;

import java.sql.*;
public class CrudOperation 
{
    private static Connection cn;
    private static PreparedStatement ps;
    private static ResultSet rs;
    
    
 public static ResultSet getData(String sql,String id) {
    	
    	cn=createConnection();
    	
       try {
    		ps=cn.prepareStatement(sql);
    		ps.setString(1, id);
    		rs=ps.executeQuery();
    		
    		
    	}catch(SQLException se) {
    		
    		System.out.println(se);
    	}
    	return rs;
    	
    	
    }
 public static ResultSet getData(String sql,int id) {
 	
 	cn=createConnection();
 	
    try {
 		ps=cn.prepareStatement(sql);
 		ps.setInt(1, id);
 		rs=ps.executeQuery();
 		
 		
 	}catch(SQLException se) {
 		
 		System.out.println(se);
 	}
 	return rs;
 	
 	
 }
    
    
    
    public static ResultSet getData(String sql) {
    	
    	cn=createConnection();
    	
       try {
    		ps=cn.prepareStatement(sql);
    		rs=ps.executeQuery();
    		
    		
    	}catch(SQLException se) {
    		
    		System.out.println(se);
    	}
    	return rs;
    	
    	
    }
    
    public static Connection createConnection() {
    	try {
    		
    		Class.forName("com.mysql.jdbc.Driver");//use to create of object of driver class
    		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kidscamp", "root", "yahoo@9898");//connection string or url
				
			}catch (SQLException| ClassNotFoundException cse) {
				System.out.println(cse);
			}
    	
    	return cn;
    	
    }
    
    
    
}
