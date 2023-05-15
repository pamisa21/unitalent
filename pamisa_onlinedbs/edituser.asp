<!--#include file="./templates/header.asp"-->

<h2 >Update user info </h2>



<form method="post" action="updateuser.asp">
  <input type="hidden" name="id" value="<%=request.querystring("id")%>">

<table class="table">

  <% 

  set rs = server.createobject("ADODB.recordset")
  rs.open "SELECT * FROM user WHERE userid= "& request.querystring("id"),cn,3,3
  %>

  <tr> 
    <td style="text-align: right;"> Complete Name </td>
    <td><input type="text" name="compname" value="<%=rs("complete_name")%>"></td>
  </tr>
    <tr> 
    <td style="text-align: right;"> Email Address </td>
    <td><input type="text" name="email" value="<%=rs("eaddress")%>"></td>
  </tr>
    <tr> 
    <td style="text-align: right;"> User Name </td>
    <td><input type="text" name="usname" value="<%=rs("uname")%>"></td>
  </tr>
    <tr> 
    <td style="text-align: right;"> Password  </td>
    <td><input type="text" name="p_word" value="<%=rs("pword")%>"></td>
  </tr>
<tr>
    <td colspan="2" style="text-align: center;">

    <input type="submit" name="update" value="Update">
    <input type="reset" value="Reset">
</td>
</tr>
  





</table>



















<!--#include file="./templates/footer.asp"-->
