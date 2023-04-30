package web.service.impl;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import web.dao.face.SoundDao;
import web.dao.impl.SoundDaoImpl;
import web.dto.Sound;
import web.service.face.SoundSerivce;

public class SoundServiceImpl implements SoundSerivce {

	private SoundDao soundDao = new SoundDaoImpl();
	
	@Override
	public List<Sound> getList() {
		
		return soundDao.selectAll(JDBCTemplate.getConnection());
	}

}
