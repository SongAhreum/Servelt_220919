<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>

<%

String songId = request.getParameter("id");
boolean isId = songId != null;
String search = request.getParameter("search");// 노래제목이 존재하면 해당패이지
boolean isSearch = search != null;



Map<String,Object> musicInfoSelected = new HashMap();
for(Map<String,Object> musicInfos : musicList){	
	if(isId){
		if(songId.equals(String.valueOf(musicInfos.get("id")))){
			musicInfoSelected = musicInfos;
		}
	} else if (isSearch){
		if(String.valueOf(musicInfos.get("title")).contains(search)){
			musicInfoSelected = musicInfos;
		} 
	}
}

%>
<br>
<div><h3>곡 정보</h3></div>
<div>
	<div class="border border-success d-flex p-3">	
		<div>
			<img width="200" alt="앨범이미지" src="<%=musicInfoSelected.get("thumbnail") %>">
		</div>
				
		<div class="ml-3" style="color:gray;">
			<div style="font-size:2.5em;color:gray">
				<%=musicInfoSelected.get("album")  %>
			</div>
			<div style="color:green">
				<%=musicInfoSelected.get("singer") %>
			</div>
			<br>
			<div class="d-flex">
				<div>
					앨범 <br>
					재생시간 <br>
					작곡가 <br>
					작사가 
				</div >
					
				<div class="pl-3">
					<%=musicInfoSelected.get("album")%><br>
					<%=Integer.valueOf(String.valueOf(musicInfoSelected.get("time")))/60%>  :  <%=Integer.valueOf(String.valueOf(musicInfoSelected.get("time")))%60%><br>
					<%=musicInfoSelected.get("composer")%><br>
					<%=musicInfoSelected.get("lyricist")%><br>
				</div>
			
			</div>
			
		</div>
	</div>
</div>
<br>

<h5 class="font-weight-bord"><b>가사</b></h5>
<hr>
<div>
	가사 정보 없음
</div>

