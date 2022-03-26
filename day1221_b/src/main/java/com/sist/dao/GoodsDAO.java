package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sist.db.ConnectionProvider;
import com.sist.vo.GoodsVO;

public class GoodsDAO {
	
	public int deleteGoods(int no) {
		int re = -1;
		String sql = "delete goods where no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt);
		}catch(Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}	
		return re;
	}
	
	public int updateGoods(GoodsVO g) {
		int re = -1;
		String sql = "update goods set name=?,price=?,qty=?,fname=? where no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, g.getName());
			pstmt.setInt(2, g.getPrice());
			pstmt.setInt(3, g.getQty());
			pstmt.setString(4, g.getFname());
			pstmt.setInt(5, g.getNo());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt);
		}catch(Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}	
		return re;
	}
	
	
	public GoodsVO getGoods(int no) {
		GoodsVO g = null;
		String sql = "select * from goods where no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				g = new GoodsVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}
		return g;
	}
	
	public ArrayList<GoodsVO> listAll(){
		String sql = "select * from goods";
		ArrayList<GoodsVO> list = new ArrayList<GoodsVO>();
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new GoodsVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5)));
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}
		return list;
	}
	
	public int insertGoods(GoodsVO g) {
		int re = -1;
		String sql = "insert into goods values(?,?,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, g.getNo());
			pstmt.setString(2, g.getName());
			pstmt.setInt(3, g.getPrice());
			pstmt.setInt(4, g.getQty());
			pstmt.setString(5, g.getFname());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:"+e.getMessage());
		}
		return re;
	}
	
}
