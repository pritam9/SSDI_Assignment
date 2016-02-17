<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World!!</title>
</head>
<body>
<%
	Connection con =null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	String driverName="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/ssdi_assignment";
	String user = "root";
	String password="root";
	String sql = "select * from user_details";
	
		Class.forName(driverName);
		con= DriverManager.getConnection(url, user, password);
		ps= con.prepareStatement(sql);
		rs = ps.executeQuery();

	
%>
	
	<h1>List of Users are:</h1>
	<form action="" >
		<table border="1" style="border: thick" >
			<tr><td>User</td><td>Age</td></tr>
			<%
				while(rs.next())
				{
					%><tr><td><%= rs.getString(1)  %></td><td><%=rs.getInt(2) %></td></tr>
			<%	}
			  %>
		</table>
	</form>


</body>

</html>