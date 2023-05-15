<!--#include file="./templates/header.asp"-->

<%

dim cname, uname, eaddress, pword
cname=request.form ("cname")
uname=request.form("uname")
pword=request.form ("pword")
eaddress=request.form("eaddress")





sql="INSERT INTO user (complete_name, uname, pword, eaddress,status) VALUES ('" & cname & "','" & uname & "','"  & pword & "','" & eaddress  & "',1)"

on error resume next 
cn.Execute sql,recaffected

if err<>0 then
	Response.write ("No Updated Permisssion!")
	response.write err.description
else 
<!-- response.write ("<h3>" & recaffected & "record added </h3>") -->
response.redirect ("users.asp")

end if 

cn.close	


%>

<!--#include file="./templates/footer.asp"-->