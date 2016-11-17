package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import utils.ConnUtil;

// 데이터베이스 작업을 목적으로 하는 객체는 DAO (Access Object)
public class MemberDao {
	// 등록작업을 할수 있게 메서드로 만들어두자
	public int createOne(String id, String pass, String name, String age, Float cm) {
		System.out.println(id + "/" + pass + "/" + name + "/" + age + "/" + cm);
		int n = 0;
		try {
			Connection conn = ConnUtil.open();
			// ==================================================================
			String sql = "insert into SAMPLE values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name); // 숫자(물음표 순서)
			ps.setString(2, age); // 숫자(물음표 순서)
			ps.setFloat(3, cm);
			ps.setString(4, id); // 숫자(물음표 순서)
			ps.setString(5, pass); // 숫자(물음표 순서)
			n = ps.executeUpdate(); // 실제 반영된 개수
			// ==================================================================
			conn.close();
		} catch (Exception e) {
			System.out.println(e + "!");
			e.printStackTrace();
		}
		return n;
	}

	// 기본키에 해당하는 데이터를 하나 가지고 오는 작업을 메서드로
	public MemberVo readOne(String id) {
		MemberVo vo = null;
		try {
			Connection conn = ConnUtil.open();
			String sql = "select * from SAMPLE where ID=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				String pass = rs.getString("PW");
				String name = rs.getString("name");
				String age = rs.getString("age");
				float cm = rs.getFloat("cm");
				vo = new MemberVo(id, pass, name, age, cm);
			}
			conn.close();
		} catch (Exception e) {
			System.out.println("E==" + e);
			e.printStackTrace();
		}
		return vo;
	}

	public List<MemberVo> readAll() {
		List<MemberVo> list = new ArrayList<MemberVo>();
		try {
			Connection conn = ConnUtil.open();
			String sql = "select * from SAMPLE";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String id = rs.getString("ID");
				String pass = rs.getString("PW");
				String name = rs.getString("name");
				String age = rs.getString("age");
				Float cm = rs.getFloat("cm");
				MemberVo vo = new MemberVo(id, pass, name, age, cm);
				list.add(vo);
			}
			conn.close();
		} catch (Exception e) {
			System.out.println("E==" + e);
		}

		return list;
	}
}
