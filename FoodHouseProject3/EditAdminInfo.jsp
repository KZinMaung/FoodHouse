<html>
<head>
<title> Profile</title></head>

<body>

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>



<% try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
			Statement st=con.createStatement();
			String sql="select * from admin_info ";
			ResultSet rs=st.executeQuery(sql);
			
			
	
			while(rs.next()){
				
				String id=rs.getString(1);
				String fname=rs.getString(2);
				String lname=rs.getString(3);
				String phone=rs.getString(4);
				String email=rs.getString(5);
				String address=rs.getString(6);
				String password=rs.getString(7);
				%>
	<form action="EditAdminInfoAction.jsp" method="post">	
	<center><font face="" size=5 style="font-weight:bold;">Edit Your Info!	</font></center>	
	<table align=center border=0 height=60% width=70% bgcolor=#d3d3d3 cellpadding=10>
	
	<tr><td><font size=3>First Name:</font></td><td> <input type="text" name="adfname" value="<%=fname%>" size=40></td></tr>
	<tr><td><font size=3>Last Name:</font></td><td> <input type="text" name="adlname" value="<%=lname%>" size=40></td></tr>
	<tr><td><font size=3>Phone Number:</font></td><td> <input type="text" name="adph" value="<%=phone%>" size=40></td></tr>
	<tr><td><font size=3>	Contact Email:</font></td><td> <input type="text" name="ademail" value="<%=email%>" size=40></td></tr>
	<tr><td><font size=3>	 Address:</font></td><td><input type="text" name="adaddress" value="<%=address%>" size=40></td></tr>
	
		 
		 <%}
			
			}
		 
		 catch(Exception e){
			 
		 }%>
		 
	<tr><td></td><td></td><td> <input type="submit" value="Update My Info" name="update_info"></td></tr>
</table>		
</form>

</body>
</html>