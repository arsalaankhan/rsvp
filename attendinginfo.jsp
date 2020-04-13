<head>
<style> 

body{
		background-color:cyan;
		background-image:url("birth.jpg");
		}
		.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 62px;
    text-align: left;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 400px 30px;
    cursor: pointer;
}
.b1 {
    background-color:#4CAF50 ;
    border: none;
    color: white;
    padding: 15px 62px;
    text-align: left;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 0px 30px;
    cursor: pointer;
}
input[type=] {
    width: 50%;
    padding: 10px 00px;
    margin: 4px 0;
    box-sizing: border-box;
    border: none;
    background-color:;
    color: white;
}
.font{
	text-color:pink;
}
/* The container */
.container {
    display: block;
    position: relative;
    padding-left: 0px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default radio button */
.container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left:500px;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	right: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
</style>
</head>
<body bgcolor='pink' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:DSA");
	Statement stmt=cn.createStatement();

	String str="Select * from attendinginfo";
	ResultSet rs=stmt.executeQuery(str);
              out.println("<center><h2 style='font-family:forte'>ATTENDING INFO</h2>");
	out.println("<table border='7' width='70%' align='top'>");
	out.println("<tr><th>NAME</th><th>PHONE NUMBER</th><th>ALLOCATED ROOM NO</th><th>ALLOCATED PARKING</th>");
	while(rs.next())
	 {
	         out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	         out.println("<td>"+rs.getString(4)+"</td>");
			 	         out.println("<td>"+rs.getString(5)+"</td>");

        // out.println("<td><img src='"+application.getRealPath(rs.getString(6))+"' width='40' height='40'></img></td></tr>");
	 }   
	       // String x=rs.getString(6);
	       //out.println(x);		

//out.println("<td><img src='"+x+"' width='40' height='40'></img></td></tr>");	
 
	out.println("</table>");
     }
    catch(Exception e)
     {
	out.println(e);
     }
%>
<a href="events.jsp" style="background-color:white">go back</a>

</body>