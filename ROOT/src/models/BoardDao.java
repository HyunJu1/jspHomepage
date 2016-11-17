package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import utils.ConnUtil;

public class BoardDao {
	public int countAdd(int num) {
		int n = 0;
		try {
			Connection conn = ConnUtil.open();
			String sql = "update board set count=count+1 where num=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			System.out.println(e + "!");
			e.printStackTrace();
		}
		return n;
	}

	public int change(BoardVo vo, String title, String content) {
		int n = 0;
		try {
			Connection conn = ConnUtil.open();
			// ==================================================================
			String sql = "update board set title=?, content=? where num=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3, vo.getNum()); // ����(����ǥ ����)
			n = ps.executeUpdate();
			// ==================================================================
			conn.close();
		} catch (Exception e) {
			System.out.println(e + "!");
			e.printStackTrace();
		}
		return n;
	}

	public int delete(BoardVo vo) {
		int n = 0;
		try {
			Connection conn = ConnUtil.open();
			// ==================================================================
			String sql = "delete from board where num=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, vo.getNum()); // ����(����ǥ ����)
			n = ps.executeUpdate(); // ���� �ݿ��� ����
			// ==================================================================
			conn.close();
		} catch (Exception e) {
			System.out.println(e + "!");
			e.printStackTrace();
		}
		return n;
	}

	public int createOne(BoardVo vo) {
		int r = 0;
		try {
			Connection conn = ConnUtil.open();
			String sql = "insert into board values(board_seq.nextval,?,?,?,?,0,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			// �� 5���� ������ ���ߵȴ�.
			// BoardVo.java ���
			ps.setString(1, vo.getWriter());
			ps.setString(2, vo.getType());
			ps.setString(3, vo.getTitle());
			ps.setString(4, vo.getContent());
			ps.setString(5, vo.getIp());
			r = ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	} // end createOne =========================================================

	public List<BoardVo> readAll() {
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		try {
			Connection conn = ConnUtil.open();
			String sql = "select * from board order by num desc";
			// ������ ������ order by ���̸� (asc(��������) || desc(��������))
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BoardVo vo = new BoardVo();
				vo.setCount(rs.getInt("count"));
				vo.setContent(rs.getString("content"));
				vo.setIp(rs.getString("ip"));
				vo.setNum(rs.getInt("num"));
				vo.setTitle(rs.getString("title"));
				vo.setType(rs.getString("type"));
				vo.setWriter(rs.getString("writer"));
				list.add(vo);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	} // end readAll ===========================================

	public BoardVo readOne(int num) {
		BoardVo vo = null;
		try {
			Connection conn = ConnUtil.open();
			String sql = "select * from board where num=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				vo = new BoardVo();
				vo.setCount(rs.getInt("count"));
				vo.setContent(rs.getString("content"));
				vo.setIp(rs.getString("ip"));
				vo.setNum(rs.getInt("num"));
				vo.setTitle(rs.getString("title"));
				vo.setType(rs.getString("type"));
				vo.setWriter(rs.getString("writer"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	} // end readOne ===========================================

}
