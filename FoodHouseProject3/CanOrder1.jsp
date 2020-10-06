<html>
<head>
<style>

table{

border-collapse:collapse;
width:100%;
}



td{
text-align:left;
padding:4px;
border-bottom:1px solid black;

}

tr:nth-child(odd){
background-color:#d3d3d3;
}

</style>
</head>
<body bgcolor="#f2f2f2">


<form action="BuyAction.jsp" target="viewOrderList">

<font size=4 >OrderDate:<input type="text" name="order_d"></font><br><br>

<table border=0>

 <%@ include file="importfile.jsp"%>


   <%
   
   
   try{
	   %>
	   <%@include file="dbConnector.jsp" %>
	   
	   <% 
	   String choice=request.getParameter("chooseCatagory");
		String sql="select * from menu where menu_catagory='"+choice+"' and menu_status='available'";
	   
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()){
			String menu_id=rs.getString(1);
			String menu_name=rs.getString(2);
			String menu_price=rs.getString(3);
			String menu_image=rs.getString(5);
			//String menu_category=rs.getString(6);
			
				
			
			//int Qty=0;
			
			out.print("");
			%>
			
		   
			<tr>
			<td><input type='checkbox' name='orderList' value='<%=menu_id%>' size=25></td>
			<td><img src="images/<%=menu_image%>" height=70 width=70></td>	
			<td><%=menu_name %></td>
			<td><%=menu_price %></td>
			<td>Quantity:<input type="text" name="<%=menu_id %>"></td>
			</tr>
			
			
			<% 
			
		}
   }
   catch(Exception e){
	   
   }
   %>
   
</table>


<input type="submit" name="buy" value="PreviewMyOrder"/> 
</form>
</body>
</html>