<html>
<body>
<form action="canEditEmpInfo.jsp" target="CanEditEInfoUI">
<table border=0 width=60% align=center>
<tr><td><font size=4 >Select Employee-Name:</font>
	<select name="EditEmpName">
	
<%@include file="dbConnector.jsp" %>
<%

String emp_name;

 String sql="Select employee_name from foodordering.employee_info";
 ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	emp_name=rs.getString(1);
	%>
	<option><%=emp_name%></option>
	<%
}	
%>
</select></td>
<td><input type="submit" value="Edit Info"></td>
</tr>
</table>
</form>
</body>
</html>