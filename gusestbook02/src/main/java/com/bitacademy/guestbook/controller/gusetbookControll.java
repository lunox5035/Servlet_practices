package com.bitacademy.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.guestbook.dao.guestbookDao;
import com.bitacademy.guestbook.vo.guestbookVo;

public class gusetbookControll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action =request.getParameter("g");
		
		if("form".equals(action)) {
			RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
			
		}else if("delete".equals(action)){

			String sno =request.getParameter("no");
			Long no = Long.parseLong(sno);
			String password = request.getParameter("password");
			
			new guestbookDao().deleteByNoAndPassword(no,password);
			
			response.sendRedirect(request.getContextPath()+"/gc");
			
		}else if("add".equals(action)){

			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String contents = request.getParameter("contents");
			
			guestbookVo vo=new guestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setContents(contents);	
			
			new guestbookDao().insert(vo);

			response.sendRedirect(request.getContextPath()+"/gc");
		
		}else {
			List<guestbookVo> list = new guestbookDao().findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
