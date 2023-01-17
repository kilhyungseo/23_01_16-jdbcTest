<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 리스트</title>
</head>
<body>
	<%! //선언문
		String driverName = "com.mysql.cj.jdbc.Driver"; //드라이버
		String url = "jdbc:mysql://localhost:3306/webdb"; 
		String username = "root"; //mysql 아이디
		String password = "1234"; //root 암호
		
		String sql = "SELECT * FROM members";
		
		Connection conn; //DB 연결 선언
		Statement stmt; //Statement 선언
		ResultSet rs; //ResultSet 선언
	%>
		
	<%	
		try {
			Class.forName(driverName);//드라이버 불러오기	
			conn = DriverManager.getConnection(url, username, password);//DB 연동
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql); //sql문의 결과 값을 저장(select문이 반환하는 레코드 저장)
			
			while(rs.next()){			
				String db_id = rs.getString("id");
				String db_pw = rs.getString("password");
				String db_name = rs.getString("name");
				String db_email = rs.getString("email");
				String db_jointime = rs.getString("jointime");
				
				out.println(db_id + " " + db_pw + " " + db_name + " " + db_email + " " + db_jointime + "<br>");	
			}
			

			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null){
					rs.close();
				}
				
				if(stmt != null){
					stmt.close();
				}
				
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	%>
</body>
</html>