package kr.co.kic.dev1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import kr.co.kic.dev1.dto.MemberDto;
import kr.co.kic.dev1.util.ConnLocator;

public class MemberDao {
	private static MemberDao single;
	private MemberDao() {
		
	}
	public static MemberDao getInstance() {
		if(single==null) {
			single = new MemberDao();
		}
		return single;
	}
	
	public boolean insert(MemberDto m) {
		boolean isSuccess = false;
		DataSource ds = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
				
		
		try {
			//ds.getConnection()은 이미 만들어진 Connection Pool에
			//있는 Connection 객체를 가져온다.
			//다시말해서 이 시점에서 Connection 객체를 생성하는 것이 아니라
			//이미 만들어진 Connection 객체를 사용하는 것이다.
			con = ConnLocator.getConnection();
			
			StringBuffer sql = new StringBuffer();
			sql.append("INSERT INTO member(m_id,m_email,m_pwd )");
			sql.append("VALUES(?,?,PASSWORD(? )) ");
			pstmt = con.prepareStatement(sql.toString());
			int index = 1;
			pstmt.setString(index++,m.getId());
			pstmt.setString(index++,m.getEmail());
			pstmt.setString(index,m.getPwd());
			
			pstmt.executeUpdate();
			isSuccess = true;
			
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				//Connection 객체를 종료하는것이 아니라 Connection pool에 Connection 객체를 반납하는 것이다.
				if(con != null) con.close();
								
			}catch(SQLException e2) {
				
			}
		}
		
		return isSuccess;
	}

}
