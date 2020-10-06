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
<form action="BuyConfirmAction.jsp" method="post">
<table border=1>
 <tr>
   <td>Order_Date</td>
   <td>menu_name</td>
   <td>menu_Price</td>
   <td>order_Qty</td>
   <td>total_price</td>
   
  </tr> 
  
 <%@ include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
	String menu_name="";
	int menu_price=0;
     String order_d;
     int totalPrice=0;
     int total=0;
	
	
   String menu_id;
	String[] orderlist;
	int qty=0;
	orderlist=request.getParameterValues("orderList");
	order_d=request.getParameter("order_d");

	
	HttpSession ss1=request.getSession(true);
	ss1.setAttribute("orderlist",orderlist);
	ss1.setAttribute("order_d",order_d);
	
	
	
   if(orderlist.length!=0)	{
	for(int i=0;i<orderlist.length;i++){
		menu_id= orderlist[i];
		//get ordet quantity;
		qty=Integer.parseInt(request.getParameter(menu_id));
		ss1.setAttribute("'"+menu_id+"'",qty);
		
		
		String sql="select menu_name,menu_price from foodordering.menu where menu_id='"+menu_id+"'";
		ResultSet rs=st.executeQuery(sql);
		
		
		
		while(rs.next()){
			menu_name=rs.getString(1);
			menu_price=rs.getInt(2);	
			totalPrice=menu_price*qty;
			total=total+totalPrice;
			
			%>
			
			
			
			<tr>
			 <td><%=order_d %>
			 <td><%=menu_name%></td>
			 <td><%=menu_price%></td>
			 <td><%=qty %></td>
			 <td><%=totalPrice %>
			 
			 
			</tr>
			
			<% 
		}	
	}
}
else{
	out.println("none");
}
				
		
		
			
	
	
	

%>

</table>
Total Amount :<%=total %>
<br><br><br>
<input type="submit" value="Confirm">
</form>
<form action="OrderPage.jsp" method="post" target="#k">
  <input type="submit" value="Cancel">
</form>
</body>
</html>