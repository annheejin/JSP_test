<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql"uri="http://java.sun.com/jsp/jstl/sql" %> 
 
 <c:set var="srow" value=0/>
 <c:set var="mrow" value=1/>
 <sql:query var=rs dataSource="jdbc/testDB" maxRows="${mrow}" startRow="${srow}">
 	select m_uid,m_pwd from member where m_uid=?
 	<sql:param value="${pram.uid}"/>
 </sql:query>
 
<c:forEach items="${rs.row}" var="rs">
<c:set var="mpwd" value="${rs.m_pwd}" />
</c:forEach>

<c:choose>
	<c:when test="${param.pwd==mpwd }"><p> Login Success ! </p>
	<sql:update dataSource="jdbc/TestDB">
		updat member
		set m_visit=m_visit+1, m_lastvisit=sysdate
		where m_uid=?
		<sql:param value="${param.uid }"/>
	</sql:update>
	<c:set var="uid" value="${param.uid}" scope="session"/>
	</c:when>
	<c:otherwise><p>Loing Fail ! </p>
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