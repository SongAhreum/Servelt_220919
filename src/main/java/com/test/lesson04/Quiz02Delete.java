package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Quiz02Delete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//content type 생략
		
		//request parameter 받기
		String id = request.getParameter("id");
		
		//db연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//delet
		String deleteQuery = "delete from `favorite` where `id`="+ id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//db끊기
		ms.disconnect();
		//redirect
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
