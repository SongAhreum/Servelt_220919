package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quize10")
public class PostMethodQuize10 extends HttpServlet {
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		out.print("<html><head><title>사용자정보확인</title></head><body>");
		
		if(!userMap.get("id").equals(userId)) {
			out.print("id가 일치하지 않습니다.");
		} else if(!userMap.get("password").equals(password) ) {
			out.print("password가 일치하지 않습니다.");
		} else {
			out.print(userId+"님 환영합니다!");
		}
		
		out.print("</body></html>");
	}
	
	//테스트용 주석추가
	
	
}
