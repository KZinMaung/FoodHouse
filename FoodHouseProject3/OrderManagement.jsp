<html>
<head>
<style>
table{
border-collapse:collapse;
width:100%;
}
th{
padding:8px;
background-color:#848482;
}

td{
text-align:left;
padding:8px;
}

tr:nth-child(even){
background-color:#f2f2f2;
}




</style></head>
<body>



<table>
  <tr>
   <th>Order_id</th>
   <th>Customer_firstName</th>
   <th>Customer_lastName </th>
   <th>Menu-name</th>
   <th>Quantity </th>
   <th>Total</th>
   <th>Date</th> 
  </tr>
 <%@ include file="importfile.jsp"%>
   <%
   
   
   try{
	   Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
		
		
		Statement st=con.createStatement();
		
		
		
		
	   String menu_id;
		String sql="select * from foodordering.order where status='unfulfilled'";
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()){
			int order_id=rs.getInt(1);
			String customer_firstN=rs.getString(2);
			String customer_lastN=rs.getString(3);
			
			String menu_name=rs.getString(4);
			int quantity=rs.getInt(5);
			int total=rs.getInt(6);
			String date=rs.getString(7);
			
			
			
	
			%>
			
			<tr>
			<td><%=order_id %></td>
			<td><%= customer_firstN %></td>
			<td><%= customer_lastN %></td>	
			<td><%=menu_name %></td>
			<td><%=quantity %></td>
			<td><%=total %></td>	
			<td><%=date %></td>	
			
			
			
			
			
			
			</tr>
			
			
			<% 
			
		}
   }
   catch(Exception e){
	   out.println(e);
   }
   %>
   
</table>


</body>
</html>