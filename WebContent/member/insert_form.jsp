<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join Form</title>
	<link href="m3.css" type="text/css" rel=stylesheet>
	<script language="JavaScript">
		var msg;
		
		function form_check(){
			var form = document.form_name;
			msg = "==ERROR==\n\n";
			if(form.name.value=="")
				msg +="plz input your name.\n\n";
			
			if(form.uid.value="")
				msg +="plz input your ID\n\n";
			else if(form.uid.value.length<5)
				msg +="plz input more 5 character.\n\n";
			else if(!a_or_d(form.uid.value))
				msg +="plz input English or Number\n\n";
				
			if(form.pwd.value="")
				msg +="plz input your password";
			else if(form.pwd.value.legth<5)
				msg +="plz more input5 character\n\n";
			else if(!a_or_d(form.pwd.value))
				msg +="plz input English of Number\n\n";
					
			if(form.pwd.value=form.repwd.value)	
				msg +="Different password and password_check\n\n";
			
			if(form.ssn1.value="")
				msg +="plz input your Jumin Number\n\n";
			
			if(msg== "==ERROR==\n\n"){
				form.submit();
			}else{
				alert(msg);
				return;
			}
		}//form_check End 
		
		function a_or_d(str){//check
			lower_str = str.toLowerCase();
			for(i=0;lower_str.charAt;i++){
				ch = lower_str.charAt(i);
				if(((ch<'a') || (ch>'z')) && ((ch<'0') || (ch>'9')))
					retun 0;
			}
				return -1;
		}//a_or_d End 
	
		function openuid_check(){
			if(document.form_name.uid.value=""){
				alert("plz input your ID");
				return;
			}
			url="id_check.jsp?uid="+document.form_name.uid.value;
			open(url,"id_repeat_check","width=300,height=220");
		}//openuid_check End
	</script>
</head>
<body>
	<p><table border=1 width=50 height=30 bordercolor=black>
		<tr>
			<td align=center><font size=3><b>JOIN US</b></font></td>
		</tr>
		</table>
	<form method=post action="insert.jsp" name=form_name>
		<table border=1 cellpadding=2 cellspacing=0 width=550></tbable>
			<tr>
				<td width=10 bgcolor=#ccffff>Member Name<font color=red>*</font></td>
				<td width=450 align=left>
					<input type=text name=name size=20 value="">no blank 
				</td>
			</tr>
			<tr>
				<td bgcolor=ccffff>Jumin Num<font color=red>*</font></td>
				<td align=left>
					<input type=text name=ssn1 size=6 value=""> -
				</td>
			</tr>
			<tr>
				<td bgcolor=#CCFFFF>Member ID <font color=red></font> </td>
				<td align=left>
					<input type=text name=uid size=10 maxlength=15>
					<input type=button name="id_chk" value="ID Overlap check" onClick="openuid_check(document.form_name.uid.value)"> more input 5 char </td>
			</tr>
			<tr>
				<td bgcolor=#ccffffff>Password<font color=red>*</font></td>
				<td align=left>
					<input type=password name=pwd size=8 maxlength=12>&nbsp; more input 5 char </td>
			</tr>
			<tr>
				<td bgcolor=#ccffff>Password_Check<font color=red>*</font></td>
				<td align=left>
					<input type=password name=repwd size=8 maxlength=12 value="">&nbsp; repeat input</td>
			</tr>
			<tr>
				<td bgcolor=#ccffff>Phone Number</td>
				<td align=left>
					<input type=text name=tel1 size=3 maxlength=3 value=""> -
					<input type=text name=tel2 size=4 maxlength=4 value=""> -
					<input type=text name=tel3 size=4 maxlength=4 value="">
				</td>
			</tr>
			<tr>
				<td bgcolor=#ccffff>E-mail</td>
				<td valign=middle align=left>
					<input type=text name=email size=30 maxlength=30 value="">
				</td>
			</tr>
			<tr>
				<td colspan=3 align=left><font color=red>**</font><font color=black> signal must be full</font>&nbsp;&nbsp;
				<input type=button name=formcheck value="submit" onClick="form_check()">
				<input type=reset value="cancle">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>