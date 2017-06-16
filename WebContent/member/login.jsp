<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
	<link href="m4.css" type=text/css rel=stylesheet>
<script language="JavaScript">
	function checkInput(){
			if(document.fname.uid.value==""){
				alert("plz input ID");
				return;
			}
			if(document.fname.pwd.value=""){
				alert("plz input password");
				return;
			}
			document.fname.submit();
	}//checkInput End
</script>
</head>
<body>
	<p>
		<form method=post action="login_ok.jsp" name=fname>
			<table width=300 border=1 cellspacing=0 cellpadding=0>
				<tr>
					<td height=28 align=center><font size=3>Member Login</font></td>
				</tr>
			</table>
			<table width=300 border=1 cellspacing=0 cellpadding=1>
				<tr>
					<td width=100 align=center>ID</td>
					<td><input type=text name="uid" size=20 style="width:200"></td>
				</tr>
				<tr>
					<td width=100 align=center>Password</td>
					<td><input type=password name="pwd" size=22 style="width:200"></td>
				</tr>
				<tr height=35 valign=middle>
					<td colspan=2 align=center>
					<input type=button value="Login" onClick="checkInput()">
					<input type=reset value="Cancle">
					</td>
				</tr>
			</table>
			<table width=300 border=1 cellspacing=0 cellpadding=1>
				<tr>
					<td bgcolor=#ffffff align=center>
					Input your ID and Password <p>
					If you don't have your ID,<br>
					<a href="insert_forn.jsp">Plz click JOIN</a></p>
					 </td>
				</tr>
			</table>
		</form>
</body>
</html>