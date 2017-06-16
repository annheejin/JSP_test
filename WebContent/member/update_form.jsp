<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:set var="id" value="${uid }" scope="session"/>
<c:if test="${id==null }">
	<c:redirect url="login.jsp"/>
</c:if>

<sql:query var="rs1" dataSource="jdbc/TestDB">
	select * from member where m_uid=?
	<sql:param value="${id}"/>
</sql:query>

<c:forEach itmes="${rs1.rows }" var="rs">
	<c:set var="m_uid" value="${rs.m_uid }"/>
	<c:set var="m_uid" value="${rs.m_pwd }"/>
	<c:set var="m_uid" value="${rs.m_name }"/>
	<c:set var="m_uid" value="${rs.m_ssn }"/>
	<c:set var="m_uid" value="${rs.m_email }"/>
	<c:set var="m_uid" value="${rs.m_phone }"/>
</c:forEach>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update Member Page</title>
	<link href="m3.css" type=text/css rel=stylesheet>
	<script>
		function checkInput(){
			if(document.mform.pwd.value==""){
				alert("plz input your password");
				return;
			}
				document.mform.submit();
		}
	</script>
</head>

<body bgcolor=e0eee0>
	<p>
	<form name="form" method=pos action="update.jst">
		<table cellpadding=3 border=1 width=550>
			<tr>
				<td align=center bgcolor=#0000ff colspan=2><font color=#ffffff><b>Member info update</b></font></td>
			</tr>
			
			<tr>
				<td bgcolor=#eff4f8>&nbsp;Member Name</td>
				<td><input type=text name="name" size=20 readonly value="${m_name}"/></td>
			</tr>
			<tr>
				<td bgcolor=#eff4f8>&nbsp;Jumin Number</td>
				<td><input type=text name="ssn" size=20 readonly value="${m_ssn }"/></td>
			</tr>
			<tr>
				<td bgcolor=#eff4f8>&nbsp;Member ID</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td bgcolor=#eff4f8>&nbsp;Password</td>
				<td><input type=password name="pwd" maxlength=15 style="width:80" value="${m_pwd }"/></td>
			</tr>
			<tr>
				<td bgcolor=#eff4f8>&nbsp;Password check<font color=red>&nbsp;*</font></td>
				<td><input type=password name="repwd" size=8 maxlength=15 style="width:80" value="${m_pwd }"/>&nbsp; input password again</td>
			</tr>
			<tr>
				<td bgcolor=#eff4f8>&nbsp;Phone Number</td>
				<td><input type=text name="tel" size=12 maxlength=12 value="${m_phone }"/></td>
			</tr>
			<tr>
				<td bgcolor=#eff4f8>&nbsp;e-Mail</td>
				<td><input type=text name="e-mail" size=30 maxlength=30 value="${m_email }"/></td>
			</tr>
			
			<tr bgcolor=#ffffff>
				<td colspan=4>&nbsp;<font color=red>*</font> update &nbsp; &nbsp;
				<input type=button name=modify value=update onClick=checkInput();/>
				</td>
			</tr>
		</table>
	
	</form>

</body>
</html>