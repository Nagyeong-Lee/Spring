package kh.spring.dao;

import java.math.BigInteger;
import java.security.MessageDigest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kh.spring.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	//비밀번호 암호화
	public static String getSHA256(String input) {
		String toReturn = null;
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			digest.reset();
			digest.update(input.getBytes("utf8"));
			toReturn = String.format("%064x", new BigInteger(1, digest.digest()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return toReturn;
	}
	
	//회원가입
	public int signup(MemberDTO dto) throws Exception{
		String sql="insert into b_member values(?,?,?,?,?,?,?,?,?)";
		return jdbc.update(sql, dto.getId(),getSHA256(dto.getPw()),dto.getName(),dto.getPhone(),dto.getEmail()
				,dto.getPostcode(),dto.getAddress1(),dto.getAddress2(),dto.getProfile());
	} 
	
	//회원탈퇴
	public int delete() throws Exception{
		
	}

}
