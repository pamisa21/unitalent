<!--#include file="./templates/header.asp"-->
<link rel="stylesheet" type="text/css" href="./assets/css/users.css">
<div style="text-align:center;">
<h3 > Register User</h3>
<p>Please Sign Respectively</p>

</div>


<div>
	<form method="post" action = "reguser.asp">

	<table class ="table">
		<tr>
			<td style ='text' style = 'text-align: right;' > Complete Name</td>
			<td><input type= 'text' name= 'cname' style="background-color: #cbdcf7; color: black; border-radius: 10px; "></td>

		</tr>
			
		
		<tr>
			<td style ='text' style = 'text-align: right;' >Username</td>
			<td><input type= 'text' name= 'uname' style="background-color: #cbdcf7; color: black; border-radius: 10px;"></td>

		</tr>
		<tr>
			<td style ='text' style = 'text-align: right;' > Password</td>
			<td><input type= 'Password' name= 'pword' style="background-color: #cbdcf7; color: black; border-radius: 10px;"></td>

		</tr>
		
		
		<tr>
			<td style ='text' style = 'text-align: right;' > Email Address</td>
			<td><input type= 'text' name= 'eaddress' style="background-color: #cbdcf7; color: black; border-radius: 10px;"></td>

		</tr>
		
		<tr>
			<td colspan="3" align='center'>
				<input type="submit" value="save" style="color: white; background-color: black; border-radius: 10px;">
				<input type="reset" value= "cancel" style="color: white; background-color: red; border-radius: 10px;">
			</td>
		</tr>

	</table>
 	</form>

</div>
	
	








<!--#include file="./templates/footer.asp"-->