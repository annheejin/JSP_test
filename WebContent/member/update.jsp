<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="id" value="${uid }" scope="session"/>
<c:if test="{empty id}">
	<c:redirect url="login.jsp"/>
</c:if>

<sql:update dataSource="jdbc/TestDb">
	update member
	set m_pwd=?,m_phone=?, m_email=?
	where m_uid=?
	
	<sql:param values="${param.m_pwd }"/>
	<sql:param values="${param.m_tel }"/>
	<sql:param values="${param.m_email }"/>
	<sql:param values="${id }"/>
</sql:update>
	update your info<p>