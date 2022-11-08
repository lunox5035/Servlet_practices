package com.bitacademy.guestbook.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bitacademy.guestbook.vo.guestbookVo;

public class guestbookDao {

//===============================================================================================
	public Boolean insert(guestbookVo vo) {
		boolean result = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			//3. Statement 생성
			String sql = "insert into gustbook values(null,?,?,?,now())";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getContents());

			// 5. SQL 실행
			int count = pstmt.executeUpdate();

			// 6. 결과 처리
			result = count == 1;

		} catch (SQLException e) {
			System.out.println("Error:" + e);
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
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
//===============================================================================================
	public Boolean deleteByNoAndPassword(Long no, String password) {
		boolean result = false;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		conn = getConnection();
		
		//3. Statement 생성
		String sql = "delete from gustbook where no = ? and password = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, no);
		pstmt.setString(2, password);

		// 5. SQL 실행
		int count = pstmt.executeUpdate();

		// 6. 결과 처리
		result = count == 1;

	} catch (SQLException e) {
		System.out.println("Error:" + e);
	} finally {
		try {
			if (pstmt != null) {
				pstmt.close();
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
	
//===============================================================================================
	public List<guestbookVo> findAll() {
		List<guestbookVo> result = new ArrayList<>();
	
		Connection conn = null;
		PreparedStatement  pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();

			String sql = 
					"   select no, name, contents, date_format(reg_date, '%Y/%m/%d %H:%i:%s')" + 
				    "     from gustbook" + 
					" order by reg_date desc";

			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Long no = rs.getLong(1);
				String name = rs.getString(2);
				String contents = rs.getString(3);
				String regDate = rs.getString(4);
				
				guestbookVo vo = new guestbookVo();
				vo.setNo(no);
				vo.setName(name);
				vo.setContents(contents);
				vo.setReg_date(regDate);
				
				result.add(vo);
			}
			
		} catch (SQLException e) {
			System.out.println("Error:" + e);
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				
				if(pstmt != null) {
					pstmt.close();
				}
				
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		
		return result;
	}

//========================================================================================================	
	private Connection getConnection() throws SQLException {
		Connection conn = null;

		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			String url = "jdbc:mysql://127.0.0.1:3306/webdb?charset=utf8";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:" + e);
		} 
		
		return conn;
	}
}