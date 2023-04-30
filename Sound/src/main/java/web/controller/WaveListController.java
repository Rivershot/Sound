package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Sound;
import web.service.face.SoundSerivce;
import web.service.impl.SoundServiceImpl;


@WebServlet("/wave/list")
public class WaveListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
		private SoundSerivce soundService = new SoundServiceImpl();
	
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			List<Sound> list = soundService.getList();
			
//			System.out.println(list);
			System.out.println(list.size());
			
			req.setAttribute("list", list);
			
			req.getRequestDispatcher("/WEB-INF/views/list.jsp").forward(req, resp);
		
		}
	
	

}
