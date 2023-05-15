<!--#include file="./templates/header.asp"-->


<link rel="stylesheet" type="text/css" href="./assets/css/doc.css">

<h3 style="margin-bottom: -55px">Document Lists</h3>
<form class="more" method="get" action="documents.asp" style="margin-bottom: 10px">
        <input type="text" name="q" placeholder="Search" style="border-radius: 10px;" />
</form>

<table class=" table table-striped"> 
<p style="text-align:right;"><a href="regdoc.asp">Create New </a></p>


<tr>
    <th>&nbsp </th>
    <th>Document Name </th>
    <th>Description </th>  
    <th>Docowner</th>
    <th>Date Posted</th>
    <th>Action</th>
</tr>

    



<%

set cn= server.createobject("adodb.connection")
cn.connectionstring="Driver={MySQL ODBC 5.3 UNICODE Driver}; Server=arrampamisa.cmu-online.tech; Database=cmuonine_pamisaarramdb; User=cmuon_pamisaa; Password=39c1Gwr!; Port=3306; Option=3;"
cn.open

set rs = server.createobject("adodb.recordset")

if request.querystring("q") = "" Then
    rs.open "SELECT doc_master.docid, doc_master.dname, doc_master.description, `user`.complete_name, `user`.userid, doc_master.created_at FROM`user`INNER JOIN doc_master ON `user`.userid = doc_master.docowner AND doc_master.publisher=1 ORDER BY doc_master.created_at DESC", cn
Else
    rs.open "SELECT * FROM doc_master where description like '%" & request.querystring("q") & "%'" , cn
end if

do until rs.eof
    response.write "<tr>"

    response.write "<td>" & rs.fields("docid") & "</td>"
    response.write "<td>" & rs.fields("dname") & "</td>"
    response.write "<td>" & rs.fields("description") & "</td>"

    response.write "<td>" & rs.fields("complete_name") & "</td>"
    response.write "<td>" & rs.fields("created_at") & "</td>"
    


    if rs("userid") = session("id") Then

    response.write "<td><a href='deldoc.asp?id=" & rs.fields("docid") & "'><img src='assets/images/deleteicon.png' class='img-circle' width='15' heigth='15' border-radius='50'></a>" 
    response.write "<a href='viewdoc.asp?id=" & rs.fields("docid") & "'><img src='assets/images/viewicon.png' class='img-circle' width='15' heigth='15' border-radius='50'></a>" 
    response.write "<a href='edit.asp?id=" & rs.fields("docid") & "'><img src='assets/images/editicon.png' class='img-circle' width='15' heigth='15' border-radius='50'></a></td>" 
    Else
    response.write "<td><a href='viewdoc.asp?id=" & rs.fields("docid") & "'><img src='assets/images/viewicon.png' class='img-circle' width='15' heigth='15' border-radius='50'></a>" 

     response.write "&nbsp;</td>"
    end if
    response.write "</tr>"
    rs.movenext
loop
rs.close
cn.close
%>
</table>



<!--#include file="./templates/footer.asp"-->


