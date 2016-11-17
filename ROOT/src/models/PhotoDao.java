package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

import utils.ConnUtil;

public class PhotoDao {
	// 디비작업부분을 메서드로 구현해두자.

	// 1. 등록
	public int createOne(PhotoVo vo) {
		int r = 0;
		try {
			Connection conn = ConnUtil.open();
			String sql = "insert into photo values(photo_seq.nextval, ?, ?, ?, sysdate)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getUrl());
			ps.setString(3, vo.getPath());
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}

		return r;
	}

	// 2. 그사람의 프사 정보 다 가져오기
	public List<PhotoVo> readAll(String logid) {
		List<PhotoVo> li = new Vector<PhotoVo>();
		try {
			Connection conn = ConnUtil.open();
			String sql = "select * from photo where id=? order by num desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, logid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PhotoVo vo = new PhotoVo();
				vo.setNum(rs.getInt("num"));
				vo.setId(rs.getString("id"));
				vo.setUrl(rs.getString("url"));
				vo.setPath(rs.getString("path"));
				vo.setRegdate(rs.getDate("regdate"));
				li.add(vo);
			}
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return li;
	}
}
