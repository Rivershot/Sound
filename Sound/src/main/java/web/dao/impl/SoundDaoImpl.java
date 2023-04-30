package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import web.dao.face.SoundDao;
import web.dto.Sound;

public class SoundDaoImpl implements SoundDao {

	private PreparedStatement ps;
	private ResultSet rs; 
	
	@Override
	public List<Sound> selectAll(Connection conn) {
		
		String sql = "";
		sql += "SELECT soundno, name, time, tempo";
		sql += " FROM SOUND";
		
		List<Sound> list = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while ( rs.next() ) {
				
				Sound sound = new Sound();
				
				sound.setSoundno(rs.getInt("soundno"));
				sound.setName(rs.getString("name"));
				sound.setTempo(rs.getInt("tempo"));
				sound.setTime(rs.getString("time"));
				
				list.add(sound);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return list;
	}

}
