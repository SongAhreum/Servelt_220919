package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02Insert  extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//content type생략 - 다른페이지로 보낼 것이기 때문에 (내가 응답을 만들지 않음)
	
		//request parameter꺼내기
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		//request가 잘받아져야 db에쌓을때 무리없이 쌓임 -> 확인필요!
		//디버깅걸것
					
		//db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		//new_user에 insert 쿼리
		String insertQuery = "insert into `new_user`"
				+ "(`name`,`yyyymmdd`,`introduce`,`email`)"
				+ "values"
				+ "('"+name+"','"+yyyymmdd+"','"+introduce+"','"+email+"')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}//여기까지는 db에서 조회해서 확인 
		
		//db연결해제
		ms.disconnect();
		
		//사용자 목록 화면 이동 (Redirect) //내가잘못하는게 아니라서 위로던짐 throws IOException
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");	
	}
}
