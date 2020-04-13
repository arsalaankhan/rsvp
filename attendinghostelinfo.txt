<%@ page import="java.sql.*" %>
<head>
<style>
body{
		background-color:cyan;
		background-image:url("thankyou.jpg");
		}
.h1{
	font-size:20px;
	padding:15px 10px;
	margin: 200px 100px;
	align:bottom;
}
.h2{
	font-size:60px;
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
pst=con.prepareStatement("insert into attendinginfo values(?,?,?,?,?)");

String s1=request.getParameter("name");
String s2=request.getParameter("text1");
String s3=request.getParameter("address");
String s4=request.getParameter("t1");
String s5=request.getParameter("t2");



pst.setString(1,s1);
pst.setString(2,s2);
pst.setString(3,s3);
pst.setInt(4,Integer.parseInt(s4));
pst.setInt(5,Integer.parseInt(s5));


pst.executeUpdate();
out.println("registered successfully");
 out.println("<center><h2 style='font-family:forte'>YOUR DETAILS</h2>");
	out.println("<table border='5' width='50%' color:'red' align='bottom'>");
	out.println("<th>NAME</th><th>CONTACT NO</th><th>ROOM NO</th><th>PARKING</th>");
out.println("<tr><td>"+s1+"</td>");
	         out.println("<td>"+s2+"</td>");
	         out.println("<td>"+s4+"</td>");
	         out.println("<td>"+s5+"</td>");

pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>
<br/>
<br/>
<br/>
<center>
<a href="index.jsp" style="background-color:white" class="h1">THANKYOU</a><br/>

</center>
</body>