<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tablib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
<sql:query var="rsl" dataSource="jdbc/TestDB">
	select m_uid from member where m_uid=?
	<sql:param value="${param.uid }"/>
</sql:query>

<c:forEach var="rs" items="${rs1.rows }">
	<c:set var="id" value="${rs.m_uid }"/>
</c:forEach>

<c:choose>
	<c:when test="${param.uid=id }"><p>not use : overlap ! </p>
		<a href="JavaScript:window.cloer()">close</a>
	</c:when>
	<c:otherwise>${param.uid }<p>Use it</p>
		<a href="JavaScript:window.close()">Keep going</a>
	</c:otherwise>
</c:choose>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>