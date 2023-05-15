<!--#include file="./templates/header.asp"-->

<%
if request.form("Update") <> "" then
	set rsUpdate = server.createobject("ADODB.recordset")
	rsUpdate.open "SELECT * FROM user WHERE userid=" & request.form("id"), cn, 3,3

	rsUpdate.fields("complete_name") = request.form("compname")
	rsUpdate.fields("eaddress") = request.form("email") 
	rsUpdate.fields("uname") = request.form("usname") 
	rsUpdate.fields("pword") = request.form("p_word") 
	

	rsUpdate.Update()
	response.redirect "users.asp"  

end if

%>

<!--#include file="./templates/footer.asp"-->