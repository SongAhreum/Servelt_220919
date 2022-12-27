package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03Insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {	
		//content타입x
		
		//request parameter받기
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		
		//db연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//insert문
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`)"
				+ "values"
				+ "(" + sellerId + ", '" + title + "', " + price + ", '" + description + "', '" + picture + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db연결해제
		ms.disconnect();
		
		//리다이렉트
		response.sendRedirect("/lesson04/quiz03/list_template.jsp");
	}
}
