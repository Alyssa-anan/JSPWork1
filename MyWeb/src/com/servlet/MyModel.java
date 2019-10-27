package com.servlet;
import java.sql.*;
import java.util.*;
public class MyModel {
	public  String getDBConnection(String name,String pwd) throws Exception { 
		   String drivers="oracle.jdbc.driver.OracleDriver";
	       String url="jdbc:oracle:thin:@127.0.0.1:1521/xe"; 
	       String username="system";
	       String password="123456";  	 
	     
	       Class.forName(drivers);   
	       Connection  conn = DriverManager.getConnection(url,username,password);	
	       
			String sql = "select username,password from Information";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
			
			Map<String,String> map = new HashMap<>();

			while(rs.next()){
	    	     String iname = rs.getString("username");
	    	     String ipwd = rs.getString("password");
	    	     map.put(iname, ipwd);   
	    	}
			String answer = "no";
			if(pwd==null&&name==null) {
				answer = "no";
			} 
			else if(pwd.equals(map.get(name))) {
				answer = "yes";
			}
			return answer;
	}
	}
