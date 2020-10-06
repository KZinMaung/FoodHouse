<html>
<head>
<style>

table{

border-collapse:collapse;
width:100%;
}

th{
padding:10px;
text-align:left;}


td{
text-align:center;
padding:4px;
border-bottom:1px solid black;

}

tr:nth-child(odd){
background-color:#d3d3d3;
}

</style>
</head>
<body>
<table border=1>
   <tr>
   <th>Date</th>
   <th>Menu_name</th>
   <th>TotalQuantity</th>
   </tr>  
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
int totalQty=0;
int qty;
HttpSession ss=request.getSession(false);
String order_date=(String)ss.getAttribute("order_date");

String[] Omenu_name=request.getParameterValues("checkOrderMenu");
for(int i=0;i<Omenu_name.length;i++){
	
	String sql="select quantity from foodordering.order where date='"+order_date+"' and menu_name='"+Omenu_name[i]+"'";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next()){

		qty=rs.getInt(1);
		totalQty = totalQty+qty;
	}
	%>
	 <tr>
	   <td><%=order_date %></td>
	   <td><%=Omenu_name[i] %></td>
	   <td><%=totalQty %></td>
	 </tr>
	<%
	}
%>
</table>
</body>
</html>