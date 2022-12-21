package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		//DB연결
		MysqlService ms = MysqlService.getInstance(); //객체생성하고 연결도해야함
		ms.connect();//실질적인 db연결 (꼭넣어야함)
		
		//DB select
		PrintWriter out =response.getWriter();
		String selectQuery = "select * from `user_goods`";
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while(resultSet.next()) { //결과행이 있는동안 수행
				resultSet.getInt("id");
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//결과출력
		
		//DB 연결 해제
		ms.disconnect();
	}
}
