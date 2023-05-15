<!--#include file="./templates/header.asp"-->


<h3>ABOUT</h3>
<link rel="stylesheet" type="text/css" href="./assets/css/doc.css">
<form class="more" method="get" action="about.asp" style="margin-bottom: 10px">
        <input type="text" name="q" placeholder="Search" />
</form>

<%

set cn= server.createobject("adodb.connection")
cn.connectionstring="Driver={MySQL ODBC 5.3 UNICODE Driver}; Server=arrampamisa.cmu-online.tech; Database=cmuonine_pamisaarramdb; User=cmuon_pamisaa; Password=39c1Gwr!; Port=3306; Option=3;"
cn.open

set rs = server.createobject("adodb.recordset")

if request.querystring("q") = "" Then
    rs.open "SELECT * FROM version", cn
Else
    rs.open "SELECT * FROM version where description like '%" & request.querystring("q") & "%'" , cn
end if
   
do until rs.eof
    response.write "<br>"
    
    response.write "<h3>"& rs.Fields("version_name") & "</h3>"
    response.write "<p><small>" & rs.Fields("created_at") & "</small><br>"
    response.write "<br>"   
    response.write rs.Fields("description") & "</p>"
     
    rs.movenext
loop
rs.close
cn.close
%>

  

<!--#include file="./templates/footer.asp"-->
