<!--#include file="./templates/header.asp"-->
<%


sql="INSERT INTO doc_master (dname, description, docowner)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("name") & "',"
sql=sql & "'" & Request.Form("ddescription") & "',"
sql=sql &  Session("id") & ")"



on error resume next
cn.Execute sql,recaffected

if err<>0 then
	Response.Write("No Update Permissions!")
else 
' Response.Write("<h3>" & recaffected & " record added </h3>")
response.redirect("documents.asp")
end if 

cn.close	


%>

<!--#include file="./templates/footer.asp"-->