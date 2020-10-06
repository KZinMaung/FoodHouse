<html>
<head>

<style>

table{

border-collapse:collapse;
width:80%;
}



td{
text-align:left;
padding:4px;
border-bottom:1px solid black;

}

tr:nth-child(even){
background-color:#f2f2f2;
}

</style>
</head>
<body>



<form action="" target="body">
<table bgcolor=#d3d3d3  align=right>
<%@ include file="importfile.jsp"%>
   <%
   
   
   try{
	   %>
	   <%@include file="dbConnector.jsp" %>
	   
	   <% 
	   
		String sql="select * from menu where menu_catagory='food' and menu_status='available'";
	   
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
			<td><img src="images/<%=menu_image%>" height=70 width=70></td>	
			<td><%=menu_name %></td>
			<td><%=menu_price %></td>
			
			</tr>
			
			
			<% 
			
		}
   }
   catch(Exception e){
	   
   }
   %>
   
</table>



</form>
</body>
</html>