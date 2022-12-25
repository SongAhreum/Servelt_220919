package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Quiz02Insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//content타입x
		
		//request parameter받기
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		//db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		//insert문
		String insertQuery = "insert into `favorite`"
				+ "(`name`,`url`)"
				+ "values"
				+ "('"+name+"','"+url+"')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db연결 종료
		ms.disconnect();
		//리다이렉트
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
	
}
