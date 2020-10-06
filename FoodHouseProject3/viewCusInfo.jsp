<html>
<head>
<style>

table{
border-collapse:collapse;
width:100%;
}

th{
text-align:left;
padding:5px;
height:65px;
border-bottom:1px solid black;
background-color:#848482;
}

td{
text-align:left;
padding:5px;
border-bottom:1px solid black;

}

tr:nth-child(even){
background-color:#f2f2f2;
}





</style>
</head>
<body>
<table border=0>
 <tr>
   <th>Id</th>
   <th>FirstName</th>
   <th>LastName</th>
   <th>PhoneNumber</th>
   <th>Email Address</th>
   <th>Address</th>
   <th>Account</th>
   
   
   
  </tr>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
  String sql="select * from foodordering.customer_info ";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next()){
	  String customer_id=rs.getString(1);
	  String customer_fN=rs.getString(2);
	  String customer_lN=rs.getString(3);
	  String customer_ph=rs.getString(4);
	  String customer_email=rs.getString(5);
	  String customer_adr=rs.getString(6);
	  String customer_acc=rs.getString(7);
	 
	  
	  %>
	  
	  <tr>
	    <td><%=customer_id %></td>
	    <td><%=customer_fN %></td>
	    <td><%=customer_lN %></td>
	    <td><%=customer_ph %></td>
	    <td><%=customer_email %></td>
	    <td><%=customer_adr %></td>
	    <td><%=customer_acc %></td>
	    
	  
	  </tr>
	  <%	  
  }
  
%>
</table>
</body>
</html>