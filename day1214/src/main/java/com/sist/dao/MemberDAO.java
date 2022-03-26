package com.sist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "c##madang";
	String passwd = "madang";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public boolean isMember(String id, String pwd) {
		boolean re = false;
		String sql = "select * from member where id =? and pwd = ?";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, passwd);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs =  pstmt.executeQuery();
			if(rs.next()) {
				re = true;
			}
		}catch(Exception e) {
			System.out.println("���ܹ߻�"+e.getMessage());
		}finally {
			try {
			if(rs != null) {
				rs.close();
			}
			if(conn != null) {
				conn.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			}catch(Exception e) {}
		}
		return re;
	}
}
