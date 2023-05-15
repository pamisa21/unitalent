
<!--#include file="./templates/header.asp"-->
<%

	dim uid
	uid = Request.querystring("id")

	sql = "DELETE FROM doc_master WHERE docid=" & uid

	on error resume next
	cn.Execute sql

	if err<>0 then
		response.write("No Update Permissions!")
		response.write err.description
	else
		response.redirect("documents.asp")
	end if
cn.close
%>

<!--#include file="./templates/footer.asp"-->