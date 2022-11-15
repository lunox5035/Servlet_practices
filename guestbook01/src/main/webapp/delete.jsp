<%@page import="com.bitacademy.guestbook.repository.GuestbookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	request.setCharacterEncoding("UTF-8");

			String sno =request.getParameter("no");
			Long no = Long.parseLong(sno);
			String password = request.getParameter("password");
			
			new GuestbookRepository().deleteByNoAndPassword(no,password);
			
			response.sendRedirect("/guestbook01");
	%>
