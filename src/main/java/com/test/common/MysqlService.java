package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	//필드
	//싱글턴  MysqlService가 유일한 하나의 객체로서 존재하도록 : 한번만 객체생성
	// MysqlService자료형의 변수명 mysqlService
	//static(new를하지않아도 사용가능) 메모리에는 올라와 있으나 final이 아니라서 값은 변동가능 
	//((static)캘린더클래스처럼 사용가능)
	private static MysqlService mysqlService = null;
	
	//db의 접속정보 
	//클라이언트서비스(mysql)는 db서버를 다룰?접속할?수잇게함  (mysql홈화면의 포트번호가 있는위치임)
	//모든 서버는 url주소가 있음 그주소로 접근,웹기반서버는 url주소로 접속
	//db주소 jdbc :mysql(프로토콜명) -->jdbc:mysql://일종의 규약이라고 보면됨
	//jdbc:mysql://localhost:3306(db포트번호)/megastudy(db의 어떤테이블을 쓸건지 지정)
	//mysql에서 쓸 테이블을 진한글씨로 만들어놓고 썼던것처럼 지정을 해줘야함
	//정리 : 도메인뒤에 접속할 데이터베이스 명까지 넣는다
	private String url ="jdbc:mysql://localhost:3306/megastudy";
	private String id = "root";
	private String pw = "root"; //git에올릴거라 root로지정해둠
	
	private Connection conn; //jdbc라이브러리를 설치했기때문에 사용할수있는 클래스 Connection ->import
	private Statement statement; //ava.sql.Statement;임ㅍㅗ트
	private ResultSet res;
	
	//메서드
	
	//Singleton패턴 : MysqlService라는 객체가 단하나만 생성될 수 있도록 하는 디자인 패턴
	//new를 여러군데에서 하게되면  url id pw 들이 connection을 물게됨 ->new가될때마다하면 연결을 끊엇다 했다하게되면 트레픽이 올라감
	//정리 : db연결을 여러객체에서 하지 않도록
	//spring에서는 알아서해줌

	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	//db접속
	public void connect () { //예외처리: db접속요청을 했는데 에러가낫음 -> 요청자의문제가아니라서 알기만하고 registerDriver가 에러를 처리하도록 -> try catch문으로 해결
		try {
			//1.드라이버(jdbc) 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			//2. db 연결 (connection) 안되도 코드가 멈추지는않음 
			conn = DriverManager.getConnection(url,id,pw); 
			
			//3. statement : db와 연결해서 쿼리를 실행하기위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	// DB 연결해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// CRUD --> Read  /CUD
	
	//R ead : select
	//쿼리를날려서 결과값을 들고와 Resultset클래스에 들어있음
	public ResultSet select (String query) throws SQLException { //셀렉트할때 셀렉트 쿼리문있ㅇㅓ야함 파라미터로 받음
		//쿼리를 수행해서 결과로 resultset을 돌려주게됨
		res = statement.executeQuery(query); //여기에서 에러는 쿼리문이 잘못되었을것이기 때문에 throw씀
		return res;
	}
	
	//CUD : insert update delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
