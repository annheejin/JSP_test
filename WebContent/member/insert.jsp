<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="http://java.sum.com/jsp/jstl/core" %>    
<%@ tablib prefix="sql" uri="http://java.sum.com/jsp/jstl/sql" %>    
<%@ tablib prefix="fn" uri="http://java.sum.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="s1" value="${param.ssn1}- "/>
<c:set var="t1" value="${param.tel1 }-${param.tel2}-${param.tel3 }"/>

<sql:query var="rs" dataSource="jdbc/TestDB">
	select m_uid from member where m_uid=?
	<sql:param value="${param.uid}"/>
</sql:query>

<c:forEach items="${rs.rows }" var="rs">
	<c:set var="muid" value="${rs.m_uid }"/>
	<c:set var="mpwd" value="${rs.m_pwd }"/>
</c:forEach>

<c:choose>
	<c:when test="${not empty muid}">
	not join
	again
	</c:when>
	<c:otherwise>
		<sql:update dataSource="jdbc/TestDB">
		insert into member (m_uid,m_pwd,m_name,m_ssn,m_email,m_phone) values (?,?,?,?,?,?)
		<sql:param value="${param.uid }"/>
		<sql:param value="${param.pwd }"/>
		<sql:param value="${param.name }"/>
		<sql:param value="${s1 }"/>
		<sql:param value="${param.email }"/>
		<sql:param value="${t1 }"/>
		</sql:update>
		
		<c:set var="uid" value="{param.uid}" scope="session"/>
		Congratuation ! 
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