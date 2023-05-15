<!--#include file="./templates/header.asp"-->

<link rel="stylesheet" type="text/css" href="./assets/css/ram.css">

<!-- Bootstrap modal -->
<div class="modal fade" id="userDetailsModal" tabindex="-1" role="dialog" aria-labelledby="userDetailsModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="userDetailsModalLabel">User Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="userDetails"></div>
      </div>
    </div>
  </div>
</div>

<div class="forms">
<h2 style="margin-bottom:-55px">User list</h2>
<form  class="more" method="get" action="Users.asp" style="margin-bottom: 10px">
        <input type="text" name="q" placeholder="Search" style="border-radius: 10px;" />
</form>


<table class=" table table-striped" style="background-color: #84adea;">
<p style="background-color: #5b80a7;text-align:center; display: inline-block;width: 85px; height: 18px ;float: right;  border-radius: 5px;color: #eae6ec; font-size: 16px;"><a href="regform.asp" style="color: white;">Add Users </a></p>

<tr>
    <th> &nbsp; </th>
    <th> Users </th>
    
    <th>Status</th>
    <th>Date Register</th>
    <th>Delete</th>
    <th> Update </th>
    <th> View </th>
    
   
</tr>

<%

set rs = server.createobject("adodb.recordset")

if request.querystring("q") = "" Then
    rs.open "SELECT * FROM user", cn
Else
    rs.open "SELECT * FROM user where complete_name like '%" & request.querystring("q") & "%'" , cn
end if

do until rs.eof %>

    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-<%response.write(rs.fields("userid"))%>-modal-sm">Small modal</button> -->

    <div class="modal fade bd-<%response.write(rs.fields("userid"))%>-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <style>
    body {
        font-family: Arial, sans-serif;
        font-size: 16px;
        line-height: 1.5;
    }
    
    h2 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }
    
    .user-info {
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        padding: 20px;
        border-radius: 5px;
        max-width: 600px;
        margin: 0 auto;
    }
    
    .user-info p {
        margin: 10px 0;
    }
    
    .error-message {
        color: red;
        font-weight: bold;
        margin-bottom: 20px;
    }
</style>

<div class="user-info">
    <h2>User Information</h2>

    <% 
   

    if IsNull(rs("picture")) then
        response.write "<img src='./assets/images/nonpicture.jpg' class='img-circle' width=48 heigth='55' border-radius='40px'>"
    else
        response.write "<img src ='./assets/images/" & rs("picture") & " ' class='img-circle' width='48'heigth='55' >"
 
    End if  

      Response.Write "<p><strong>Name:</strong> " & rs("complete_name") & "</p>"
      Response.Write "<p><strong>Username:</strong> " & rs("uname") & "</p>"
      Response.Write "<p><strong>Email:</strong> " & rs("eaddress") & "</p>"
      

    %>
   
  
   
</div>

    </div>
    </div>
    </div>


    <%response.write "<tr>"

    if IsNull(rs("picture")) then
        response.write "<td style ='text-align:center;'><img src ='./assets/images/nonpicture.jpg' class='img-circle' width=48 heigth='55' border-radius='40px'></td>"
    else 
         response.write "<td style ='text-align:center;'><img src ='./assets/images/" & rs.fields("picture") & " 'class='img-circle' width='48'heigth='55' ></td>"
    end if 
     ' response.write "<td>" & rs.fields("sec_level") & "</td>"

    
     response.write "<td>" & rs.fields("complete_name") & "<br><small> " & rs.fields("uname") & "</small><br><small> " & rs.fields("eaddress") & "</small></td>"

    ' response.write "<td>" & rs.fields("complete_name") & "</td>"
    ' response.write "<td>" & rs.fields("uname") & "</td>"
    ' response.write "<td>" & rs.fields("eaddress") & "</td>"

    if rs.fields("status")=0 then
        response.write"<td><img src='./assets/images/notactive.png' class='img-circle' width='50' heigth='50'> Disable  </td>"
    else
        response.write "<td><img src='./assets/images/active.png' class='img-circle' width='50' heigth='50'>Enable </td>"
    
    end if
    response.write "<td>" & rs.fields("created_at") & "</td>"

    response.write "<td><a href='delUser.asp?id=" & rs.fields("userid") & "'><img src='assets/images/deleteicon.png' class='img-circle' width='20' heigth='30'border-radius='50'></a></td>"    

    

   response.write "<td><a href='edituser.asp?id=" & rs.fields("userid") & "'><img src='assets/images/editicon.png' class='img-circle' width='20' heigth='30' border-radius='50'></a></td>"  


    response.write "<td><a href='#'  ><img src='assets/images/viewicon.png' class='img-circle' width='20' heigth='30' border-radius='50' data-toggle='modal' data-target='.bd-"&rs.fields("userid")&"-modal-sm'></a></td>"   
        response.write "</tr>"

     
      rs.movenext

loop
Response.write "</table>"

rs.close
cn.close
%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
