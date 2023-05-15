<!--#include file="./templates/header.asp"-->
<link rel="stylesheet" type="text/css" href="./assets/css/users.css">
<div style="text-align:center;">
<h3 > Document List!</h3>
<p>Add Documents </p>

</div>


<div>
	<form method="post" action = "docuser.asp">

	<table class ="table">
		<tr>
			<td style ='text' style = 'text-align: right;' > Document Name</td>
			<td><input type= 'text' name= "docname" style="background-color: #cbdcf7; color: black; border-radius: 10px;"></td>

		</tr>
			
		
		<tr>
			<td style ='text' style = 'text-align: right;' >Add Description</td>
			<td><input type= 'text' name= "descript" style="background-color: #cbdcf7; color: black; border-radius: 10px;"></td>

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