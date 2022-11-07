package com.bitacademy.guestbook.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bitacademy.guestbook.vo.guestbookVo;

public class guestbookDao {
	public Boolean insert(guestbookVo vo) {
		boolean result = false;

		Connection conn = null;
		Statement stmt = null;

		try {
			//1. JDBC Driver Class Loading
			Class.forName("org.mariadb.jdbc.Driver");
			
			//2. 연결하기
			String url = "jdbc:mysql://127.0.0.1:3306/webdb?charset=utf8";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
			
			// 3. Statement 준비
			String sql = "insert "+
					 "into gustbook "+
					"values(null,'"+vo.getName()+"', '"+vo.getPassword()+"','"+vo.getContents()+"',now())";

			// 5. SQL 실행
			int count = stmt.executeUpdate(sql);

			// 6. 결과 처리
			result = count == 1;

		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:" + e);
		} catch (SQLException e) {
			System.out.println("Error:" + e);
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}

				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;

	}
	public Boolean delete(guestbookVo vo) {
		boolean result = false;

		Connection conn = null;
		Statement stmt = null;

		try {
			//1. JDBC Driver Class Loading
			Class.forName("org.mariadb.jdbc.Driver");
			
			//2. 연결하기
			String url = "jdbc:mysql://127.0.0.1:3306/webdb?charset=utf8";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
			
			// 3. Statement 준비
			String sql = "delete "+
					 "from gustbook "+
					"where password='"+vo.getPassword()+"' and no='"+vo.getNum()+"'";
			// 5. SQL 실행
			int count = stmt.executeUpdate(sql);

			// 6. 결과 처리
			result = count == 1;

		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:" + e);
		} catch (SQLException e) {
			System.out.println("Error:" + e);
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}

				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;

	}
}