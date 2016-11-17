package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import utils.ConnUtil;

// �����ͺ��̽� �۾��� �������� �ϴ� ��ü�� DAO (Access Object)
public class MemberDao {
	// ����۾��� �Ҽ� �ְ� �޼���� ��������
	public int createOne(String id, String pass, String name, String age, Float cm) {
		System.out.println(id + "/" + pass + "/" + name + "/" + age + "/" + cm);
		int n = 0;
		try {
			Connection conn = ConnUtil.open();
			// ==================================================================
			String sql = "insert into SAMPLE values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name); // ����(����ǥ ����)
			ps.setString(2, age); // ����(����ǥ ����)
			ps.setFloat(3, cm);
			ps.setString(4, id); // ����(����ǥ ����)
			ps.setString(5, pass); // ����(����ǥ ����)
			n = ps.executeUpdate(); // ���� �ݿ��� ����
			// ==================================================================
			conn.close();
		} catch (Exception e) {
			System.out.println(e + "!");
			e.printStackTrace();
		}
		return n;
	}

	// �⺻Ű�� �ش��ϴ� �����͸� �ϳ� ������ ���� �۾��� �޼����
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
