<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>

<%

String url    = "jdbc:oracle:thin:@localhost:1521:CENTORA"; //1521부분은 님께서 설정한 포트로 바꾸세요.

String user   = "scott";

String passwd = "tiger";

//=====================================================

Connection conn   = null;

Statement stmt    = null;

ResultSet rs      = null;

 

out.println("데이터베이스와 연결중...");

 

try{

   Class.forName("oracle.jdbc.driver.OracleDriver");

   conn = DriverManager.getConnection(url, user, passwd);

   out.println("연결 성공");

   String query = "SELECT * FROM DEPT" ;

   stmt = conn.createStatement();

   rs = stmt.executeQuery(query);

 

   while(rs.next()){ //레코드를 이동시킨다.

      String 변수명 = rs.getString(1);  //필드의 첫번째요소를 String형으로 받아낸다.

   }

}catch(ClassNotFoundException e){

 out.println("연결실패 : 드라이버 로딩 실패");

}catch(SQLException se){

 out.println("쿼리 에러 : SQLException ");//동작 실패 : 쿼리 에러

}catch(NullPointerException ne){

 out.println("널 에러 : NullPointerException ");

}catch(Exception e){

 out.println("에러 : Exception ");

 //e.printStackTrace();

} finally {

  if (rs != null) try {rs.close(); }catch(SQLException ex) {}

  if (stmt != null) try {stmt.close(); } catch(SQLException ex) {}

  if (conn != null) try {conn.close(); }catch(SQLException ex) {}

}%>