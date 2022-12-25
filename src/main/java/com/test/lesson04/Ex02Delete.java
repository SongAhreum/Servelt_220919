package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex04_delete")
public class Ex02Delete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//content type생략(리다이렉트)
		
		//request parameter 꺼내기
		int id = Integer.parseInt(request.getParameter("id"));
		
		//db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//delete수행(new_user id 데이터 삭제-query)
		String deleteQuery = "delete from `new_user` where `id`="+ id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db연결해제
		ms.disconnect();
	
		//redirect 사영자 목록화면으로 이동
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");;
	}
}
