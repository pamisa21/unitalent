
<!--#include file="./templates/dbcon.asp"-->
<%

set rs=server.createobject("ADODB.Recordset")

rs.open "SELECT * FROM user WHERE uname='" & request.form("uname") & "' AND pword='" & request.form("pword") & "'", cn

i=0

do until rs.eof =true
	i=i+1

	Session("id")=rs.fields("userid")
	Session("cName")=rs.fields("complete_name")
	Session("img") =rs.fields("picture")

	rs.movenext
loop
rs.close

	if i > 0 then
		response.redirect("home.asp")
	else
		response.write "login failed!" 
	end if


cn.close
%>

