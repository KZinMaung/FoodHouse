<html>
<head>
<style>

table{
border:1px solid black;
border-collapse:collapse;
width:80%;
}

th{
padding:10px;
text-align:left;
border-bottom:1px solid black;
}


td{
text-align:left;
padding:4px;

}



</style>
</head>
<body>
<form action="ShowOrderQtyOfSMenu1.jsp" method="post" target="ShowQrderQtyPlace">
<table >
 <tr>
  <th>Check</th>
  <th>Order_Menu_Name</th>
 </tr>



<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
String date=request.getParameter("date");

HttpSession ss=request.getSession(true);
ss.setAttribute("order_date",date);

String menu_name;
String sql="select distinct menu_name from foodordering.order where menu_name in (select menu_name from foodordering.order where date='"+date+"')";
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	menu_name=rs.getString(1);
	%>
	<tr>
	<td><input type="checkbox" name="checkOrderMenu" value="<%=menu_name %>"></td>
	<td><%= menu_name %></td>
	</tr>
	<%
}

%>

</table><br>
<input type="submit" value="Show Order Quantity">
</form>


</body>
</html>