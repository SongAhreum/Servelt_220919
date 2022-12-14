<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
			<div class="border border-success d-flex p-3">	
				<div>
					<img width="200" alt="가수이미지" src="<%=artistInfo.get("photo") %>">
				</div>
				
				<div class="ml-3">
					<h3><%=artistInfo.get("name") %></h3>
					<h5><%=artistInfo.get("agency") %></h5>
					<h5><%=artistInfo.get("debute") %> 데뷔</h5>
				</div>
</div>