
<% 


response.write request.form("uploadfile")   

%>
<br>

<%

dim file, fs, rq  


file =response.write(Server.MapPath(request.form("uploadfile")))

response.write file





%>