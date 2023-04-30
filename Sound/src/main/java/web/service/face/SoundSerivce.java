package web.service.face;

import java.util.List;

import web.dto.Sound;

public interface SoundSerivce {

	/**
	 * 모든 음원 정보 조회
	 * @return 음원 정보가 담긴 List 객체 타입
	 */
	public List<Sound> getList();

}
