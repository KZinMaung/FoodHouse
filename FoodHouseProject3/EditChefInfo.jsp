<html>
<body>
<form action="EditChefInfoAction.jsp">
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
HttpSession s1=request.getSession(false);
String cf_id=(String)(s1.getAttribute("cf_id"));
//out.println(cf_id);
try{
	
	String e_name="";
	String e_ph="";
	String e_email="";
	String e_address="";
	String sql="select * from foodordering.employee_info where employee_id='"+cf_id+"'";
	ResultSet rs=st.executeQuery(sql);
	if(rs.next()){
		 e_name=rs.getString(2);
		 e_ph=rs.getString(3);
		 e_email=rs.getString(4);
		 e_address=rs.getString(5);
	}
	%>
	
	<center><font face="broadway" size=5>Edit Your Info!	</font></center>	<br>
	<table align=center border=0 height=50% width=70% bgcolor=#d3d3d3 cellpadding=10>
	<tr><td><font size=4>Name:</font></td><td><input type="text" name="e_name" value="<%=e_name%>" size=40></td></tr>
	<tr><td><font size=4>Phone:</font></td><td><input type="text" name="e_ph" value="<%=e_ph%>" size=40></td></tr>
	<tr><td><font size=4>Email:</font></td><td><input type="text" name="e_email" value="<%=e_email%>"size=40></td></tr>
	<tr><td><font size=4>Address:</font></td><td><input type="text" name="e_address" value="<%=e_address%>" size=40></td></tr>
	
	<tr><td></td><td></td><td> <input type="submit" value="Update My Info" name="editChefInfo"></td></tr>
	<%
	
}
catch(Exception ex){
	
}
%>
</table>
</form>
</body>
</html>