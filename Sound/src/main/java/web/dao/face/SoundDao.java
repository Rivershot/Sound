package web.dao.face;

import java.sql.Connection;
import java.util.List;

import web.dto.Sound;

public interface SoundDao {

	/**
	 * 음원의 모든 정보를 조회한다
	 * 
	 * @param connection - DB 연결 객체
	 * @return - 모든 음원 정보 조회
	 */
	public List<Sound> selectAll(Connection conn);

}
