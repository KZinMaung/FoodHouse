<html>
<body>
<form action="updateEmpInfo.jsp">
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%

String emp_name=request.getParameter("EditEmpName");
HttpSession ss=request.getSession(true);
ss.setAttribute("emp_name",emp_name);




String sql="select * from foodordering.employee_info where employee_name='"+emp_name+"'";
ResultSet rs=st.executeQuery(sql);

//String emp_id="";
String emp_phone="";
String emp_email="";
String emp_address="";
String emp_status="";
String working_status="";
if(rs.next()){
	 //emp_id=rs.getString(1);
	 emp_phone=rs.getString(3);
	 emp_email=rs.getString(4);
	 emp_address=rs.getString(5);
	 emp_status=rs.getString(6);
	 working_status=rs.getString(7);
	
}
%>

<table align=center cellpadding=16px bgcolor=#d3d3d3>
<%--Employee_id:<input type="text" name="emp_id" value="<%=emp_id %>"><br> --%>
<tr><td><font size=4>Employee_phone:</font></td><td><input type="text" name="emp_ph" value="<%=emp_phone %>"></td></tr>
<tr><td><font size=4>Employee_email:</font></td><td><input type="text" name="emp_email" value="<%=emp_email %>"></td></tr>
<tr><td><font size=4>Employee_address:</font></td><td><input type="text" name="emp_adr" value="<%=emp_address%>"></td></tr>
<tr><td><font size=4>Employee_status:</font></td><td><input type="text" name="emp_sts" value="<%=emp_status %>"></td></tr>
<tr><td><font size=4>Working_status:</font></td><td><input type="text" name="wk_sts" value="<%=working_status %>"></td></tr>


<tr><td></td><td></td><td><input type="submit" value="Update"></td></tr>
</table>
</form>
</body>
</html>