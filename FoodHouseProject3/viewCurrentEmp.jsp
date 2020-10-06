<html>
<head>

<style>

table{

border-collapse:collapse;
width:80%;
}

th{
padding:10px;
border-bottom:1px solid black;}

td{
text-align:left;
padding:4px;

}

tr:nth-child(even){
background-color:#f2f2f2;
}

</style>
</head>
<body>
<table border=1 align=center>
 <tr>
    <th>Employee_id</th>
     <th>Employee_name</th>
     <th>Employee_phone</th>
      <th>Employee_email</th>
      <th>Employee_address</th> 
      <th>Employee_status</th>
 </tr>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
String sql="select * from foodordering.employee_info where working_status='yes'";
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	String emp_id=rs.getString(1);
	String emp_name=rs.getString(2);
	String emp_ph=rs.getString(3);
	String emp_email=rs.getString(4);
	String emp_adr=rs.getString(5);
	String emp_sts=rs.getString(6);
	%>
	 <tr>
	   <td><%= emp_id%></td>
	   <td><%= emp_name%></td>
	   <td><%= emp_ph%></td>
	   <td><%= emp_email%></td>
	   <td><%= emp_adr%></td>
	   <td><%= emp_sts%></td>
	  </tr>

	<%
}

%>
</table>
</body>
</html>