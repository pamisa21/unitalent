<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/css/nav.css">
    <title>my pages</title>
</head>
<body>
        
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">DBMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="home.asp">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="profile.asp">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.asp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="documents.asp">Documents</a>
        </li>

         <li class="nav-item">
          <a class="nav-link" href="users.asp">Users</a>
        </li>
         <li class="nav-item">
          <a class="nav-link"href="killsession.asp">Logout</a>
        </li>
      <div style="position: absolute; right: 0;">
 <!--    <a><img src="./assets/images/pro.png">
</a>   -->

       <%Response.Write(Session("cName") & ")") %>
      
      </ul>
    </div>

       </div>


  </div>
</nav>

<div class="container"> 

  <%
    if Session("id")="" then
      response.redirect("index.html")
    end if

  %>

<%

set cn= server.createobject("adodb.connection")
cn.connectionstring="Driver={MySQL ODBC 5.3 UNICODE Driver}; Server=arrampamisa.cmu-online.tech; Database=cmuonine_pamisaarramdb; User=cmuon_pamisaa; Password=39c1Gwr!; Port=3306; Option=3;"
cn.open
%> 
   