 <!DOCTYPE html>
<html lang="en">
<head>
<style>
body{
		background-color:cyan;
		background-image:url("attending.jpg");
		}
 li {list-style-type: none;
font-size: 26pt;
}
.h1
{
	color:blue;
}
.mail {
	font-size:30px;
margin: auto;
padding-top: 0px;
padding-bottom: 90px;
width: 700px;
background : null;
border: 5px soild silver;
}
.mail h2 {
margin-left: 200px;
margin:140px;
}
input {
font-size: 25pt;
}
input:focus, textarea:focus{
background-color: lightyellow;
}
input submit {
font-size: 12pt;
}
.rq {
color: #FF0000;
font-size: 50pt;
}
</style>
<script>

function phonenumber(inputtxt)
{
  var phoneno = /^\d{10}$/;
  if(inputtxt.value.match(phoneno))
  {
      return true;
  }
  else
  {
     alert("Not a valid Phone Number");
     return false;
  }
  }
  </script>
<meta charset="utf-8">
<title>JavaScript form validation - checking non-empty</title>
<link rel='stylesheet' href='form-style.css' type='text/css' />      
</head><body onload='document.form1.text1.focus()'>
<div class="mail">
<center><h2>USER DETAILS</h2></center>
<form name="form1" action="attendingnewyearusersinfo.jsp">
<ul>
  <table align="center" style='position:absolute;top:160pt;left:350pt;font-size:40px; color: #3956A5;'>
  <tr>
<th>name:</br</th>
<td><li><input type="text" required name="name" class="h1"/></br></td>
<br/>
</tr>
<tr>
<th>phonenumber:</br></th>
<td><li><input type="text" required name="text1" class="h1"/></br></td>

</tr>
<tr>
<th>address:</br></th>
<td><li><input type="text" required name="address" class="h1"></br></td>

</tr>
<tr>
<th></th>
<td><li class="submit"><input type="submit"  value="Submit" onclick="phonenumber(document.form1.text1)"/></li></td>
<li>&nbsp;</li>
</tr>
</ul>
</table>

</form>
</div>
<script src="phoneno-all-numeric-validation.js"></script>

</body>
</html>









