<html>
<body>
<form action="CanEditMenu.jsp" target="canEditMenu">
<table border=0 width=40% align=center>

<tr><td><font size=4 >Menu-Name:</font>
<select name="EditMenuName">
<%@include file="dbConnector.jsp" %>
<%
String menu_name;
 String sql="Select menu_name from foodordering.menu ";
 ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	menu_name=rs.getString(1);
	%>
	<option><%=menu_name %></option>
	<%
}	
%>

</select></td>
<td><input type="submit" value="Edit"></td></tr></table>
</form>
</body>
</html>