package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quize07")
public class GetmethodQuize07 extends HttpServlet{
	@Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF8");
		response.setContentType("text/html");
		
		String adress = request.getParameter("adress");
		String credit = request.getParameter("credit");
		String price = request.getParameter("price");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		
		if(adress.contains("서울시")== false) {
			out.print("배달 불가지역입니다");
		}else if(credit.contains("신한카드")) {
			out.print("결제 불가 카드입니다");
		}else {
			out.println(adress+" <b>배달준비중</b><br> 결제금액:"+price+"원");	
		}
		out.print("</body></html>");		
	}
}
