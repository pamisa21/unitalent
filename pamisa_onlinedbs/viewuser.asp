<%

set cn= server.createobject("adodb.connection")
cn.connectionstring="Driver={MySQL ODBC 5.3 UNICODE Driver}; Server=arrampamisa.cmu-online.tech; Database=cmuonine_pamisaarramdb; User=cmuon_pamisaa; Password=39c1Gwr!; Port=3306; Option=3;"
cn.open
%> 
   

<link rel="stylesheet" type="text/css" href="./assets/css/ram.css">

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
    Dim userId
    userId = Request.QueryString("id")

    If userId = "" Then
        Response.Write "<p class='error-message'>User ID is missing.</p>"
    Else
        Set rs = Server.CreateObject("ADODB.Recordset")
        rs.Open "SELECT * FROM user WHERE userid=" & userId, cn
        If rs.EOF Then
            Response.Write "<p class='error-message'>User not found.</p>"
        Else
            Response.Write "<p><strong>Name:</strong> " & rs("complete_name") & "</p>"
            Response.Write "<p><strong>Username:</strong> " & rs("uname") & "</p>"
            Response.Write "<p><strong>Email:</strong> " & rs("eaddress") & "</p>"
            ' ... add more user information here ...
        End If
        rs.Close
    End If

    cn.Close
    %>
</div>
