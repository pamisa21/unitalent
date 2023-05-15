<!--#include file="./templates/header.asp"-->

<%

' sql= "INSERT INTO doc_master (dname, description ,doc_owner)"
' sql=sql & " VALUES "
' sql=sql & "'" & Request.Form("dname") & "',"
' sql=sql & "'" & Request.Form("description") & "',"
' sql-sql & "1)"

dim dname, desc, doc_owner
dname=request.form("docname")
desc=request.form("descript")

sql="INSERT INTO doc_master (dname, description) VALUES ('" & dname & "','" & desc & "')"


on error resume next
cn.Execute sql,recaffected

if err<>0 then
	response.write("No Update permission!")
	response.write err.description
else 
	response.redirect("documents.asp")
end if

%>

<!--#include file="./templates/footer.asp"-->