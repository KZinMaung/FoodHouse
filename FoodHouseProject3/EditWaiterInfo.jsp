<html>
<body>
<form action="EditWaiterInfoAction.jsp">
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
HttpSession s2=request.getSession(false);
String w_id=(String)(s2.getAttribute("w_id"));
//out.println(cf_id);
try{
	
	String w_name="";
	String w_ph="";
	String w_email="";
	String w_address="";
	String sql="select * from foodordering.employee_info where employee_id='"+w_id+"'";
	ResultSet rs=st.executeQuery(sql);
	if(rs.next()){
		 w_name=rs.getString(2);
		 w_ph=rs.getString(3);
		 w_email=rs.getString(4);
		 w_address=rs.getString(5);
	}
	%>
	<center><font face="broadway" size=5 color=white>Edit Your Info!	</font></center>	
	<table align=center border=0 height=60% width=70% bgcolor=#d3d3d3 cellpadding=10>
	<tr><td><font size=3>Name:</font></td><td><input type="text" name="w_name" value="<%=w_name%>"></td></tr>
	<tr><td><font size=3>Phone:</font></td><td><input type="text" name="w_ph" value="<%=w_ph%>"></td></tr>
	<tr><td><font size=3>Email:</font></td><td><input type="text" name="w_email" value="<%=w_email%>"></td></tr>
	<tr><td><font size=3>Address:</font></td><td><input type="text" name="w_address" value="<%=w_address%>"></td></tr>
	
	<tr><td></td><td></td><td><input type="submit" value="UpdateMyInfo" name="editChefInfo"></td></tr>
	<%
	
}
catch(Exception ex){
	
}
%>
</table>
</form>
</body>
</html>