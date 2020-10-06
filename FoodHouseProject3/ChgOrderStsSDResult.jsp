<html>
<head>
<style>

table{
border-collapse:collapse;
width:100%;
}

th,td{
text-align:left;
padding:8px;
}

tr:nth-child(even){
background-color:#d3d3d3;
}

</style>
</head>
<body>



<table border=1>
  <tr>
   <td>Order_id</td>
   <td>Customer_firstName</td>
   <td>Customer_lastName </td>
   <td>Menu-name</td>
   <td>Quantity </td>
   <td>Total</td>
   <td>Date</td> 
  </tr>
 <%@ include file="importfile.jsp"%>


   <%
   
   
   try{
	   %>
	   <%@include file="dbConnector.jsp" %>
	   <% 
	   String Sdate=request.getParameter("SD");
	   String menu_id;
		String sql="select * from foodordering.order where date='"+Sdate+"'";
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