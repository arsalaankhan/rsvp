 <!DOCTYPE html>
<html lang="en">
<head>
</head><body onload='document.form1.text1.focus()'>
<div class="mail">
<style>
body{
		background-color:cyan;
		background-image:url("attendingbirthday.jpg");
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
<center><h2>USER DETAILS</h2></center>
<form name="form1" action="attendingbirthdayusersinfo.jsp">
<ul>
<%@ page language='java' import='java.sql.*' %>

<%
    Connection cn1=null;
     Statement stmt1=null;
     int id=0;
    try
     {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	cn1=DriverManager.getConnection("jdbc:odbc:DSA");
	stmt1=cn1.createStatement();
	String str1="Select max(id) from attendinginfo";

	ResultSet rs1=stmt1.executeQuery(str1);


		
	if(rs1.next())
	     id=Integer.parseInt(rs1.getString(1))+1;

     }
	
    catch(Exception e)
      {
	id=801;
      }

      stmt1.close();
      cn1.close();

      session.setAttribute("t1",String.valueOf(id));


%>

<%
    Connection cn=null;
     Statement stmt=null;
     int parking=0;
    try
     {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	cn=DriverManager.getConnection("jdbc:odbc:DSA");
	stmt=cn.createStatement();
		String str="Select max(parking) from attendinginfo";

	ResultSet rs=stmt.executeQuery(str);


		

if(rs.next())
	parking=Integer.parseInt(rs.getString(1))+1;
     
     }
	
    catch(Exception e)
      {
	parking=1001;
      }

      stmt.close();
      cn.close();

	        session.setAttribute("t2",String.valueOf(parking));


%>
  <table align="center" style='position:absolute;top:160pt;left:350pt;font-size:40px; color: #3956A5;'>
   <tr>
	<th align='right'>room no : </th>
<%
out.println("<td><input type='text' name='t1' size=10 value='"+id+"' readonly></td>");
%>
     
	    <tr>
	<th align='right'>parking : </th>
<%
out.println("<td><input type='text' name='t2' size=10 value='"+parking+"' readonly></td>");
%>
     </tr>
     <tr>
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









