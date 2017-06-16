<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  

<c:set var="id" value="${uid}" scope="session"/>
<c:if test="${id==null }">
</c:if>

<sql:update dataSource="jdbc/TestDB">
	delete from member where m_uid=?
	<sql:param value="${id}"/>
</sql:update>

<c:remove var="uid" scope="session"/>
<c:out value="delete member"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>