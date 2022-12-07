package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UrlMappingEx01 extends HttpServlet {

	@Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException{
        //한글깨짐방지 - 맨위에 작성하자
		response.setCharacterEncoding("UTF8");
		
		PrintWriter out = response.getWriter();
        out.println("안녕하세요");

	}
}
