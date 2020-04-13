<%@ page import="java.sql.*" %>
<head>
<style>
body{
		background-color:cyan;
		background-image:url("thankyou.jpg");
		}
.h1{
	font-size:50px;
	padding:26px 50px;
}
</style>
</head>
<body bgcolor="pink" >



<%
Connection con=null;
PreparedStatement pst=null;
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:DSA");
pst=con.prepareStatement("insert into newyear values(?,?,?)");

String s1=request.getParameter("name");
String s2=request.getParameter("text1");
String s3=request.getParameter("address");

pst.setString(1,s1);
pst.setString(2,s2);
pst.setString(3,s3);
pst.executeUpdate();
out.println("registered successfully");

pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>
<center>
<a href="login.jsp" style="background-color:white" class="h1">THANKYOU</a>
</center>
</body>