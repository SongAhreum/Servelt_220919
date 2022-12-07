package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quize08")
public class GetMethodQuize08 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String word = request.getParameter("word");
		//여기까지 서버를 켜서 검증-> 주소뒤에 파라미터값을 가지는 쿼리스트링이 따라오는지 확인
		
		PrintWriter out = response.getWriter();
		

		//수업풀이 split
		
//		Iterator<String> it = list.iterator();
//		while(it.hasNext()) {
//			String line = it.next();
//			//검색어있을때 문장 출력(검증)
////			if(line.contains(word)) {
////				out.print(line+"<br>");
////			}
//			
//			if(line.contains(word)) {
//				String[] words = line.split(word);
//				out.print(words[0]+"<b>"+word+"</b>"+words[1]+"<br>");
//				
//			}
//		}
		
		//수업풀이 replace
		Iterator<String> it = list.iterator();
		while(it.hasNext()) {
			String line = it.next();
			if(line.contains(word)) {
				line = line.replace(word, "<b>"+word+"</b>");
				out.print(line);
				
			}
		}
		
		
		
		//내풀이
		//out.print("<html><head><title>localhost/lesson01/quize08?keword</title></head><body>");
//		for(int i =0;i<list.size();i++) {
//			if(list.get(i).startsWith(word)) {
//				String[] str = list.get(i).split(word);
//				out.print("<b>"+word+"</b>"+str[0]+str[1]+"<br>");
//			}else if(list.get(i).endsWith(word)) {
//				String[] str = list.get(i).split(word);
//				out.print(str[0]+str[1]+"<b>"+word+"</b>"+"<br>");
//			}else if(list.get(i).contains(word)) {
//				String[] str = list.get(i).split(word);
//				out.print(str[0]+"<b>"+word+"</b>"+str[1]+"<br>");
//			}
//		}	
//		out.print("</body></html>");
	
	}
}
