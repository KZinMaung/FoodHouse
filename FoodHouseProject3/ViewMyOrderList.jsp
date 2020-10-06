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
<body bgcolor="#d3d3d3">
<table border=1>
 <tr><td>No</td>
     <td>Menu_name</td>
     <td>Quantity</td>
     <td>TotalPrice</td>
     <td>Order_date</td>
   </tr>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp"%>
<% 
String c_firstN="";
String c_lastN="";
String menu_name;
int qty;
int total;
String o_date="";
int no=0;



HttpSession ss1=request.getSession(false);
String customer_id=(String)(ss1.getAttribute("c_id"));
String order_d=(String)(ss1.getAttribute("order_d"));

String sql="select customer_firstname,customer_lastname from foodordering.customer_info where customer_id='"+customer_id+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next()){
	c_firstN=rs.getString(1);
	c_lastN=rs.getString(2);
}
%>
<%@ include file="dbConnector1.jsp"%>
<%
String sql1="select * from foodordering.order where customer_firstname='"+c_firstN+"' and customer_lastname='"+c_lastN+"' and date='"+order_d+"' ";
ResultSet rs1=st1.executeQuery(sql1);
if(rs1.next()){
while(rs1.next()){
	menu_name=rs1.getString(4);
	qty=rs1.getInt(5);
	total=rs1.getInt(6);
	o_date=rs1.getString(7);
	no++;
	%>
	
	<tr> <td><%=no %></td>
	     <td><%=menu_name %>
	     <td><%=qty %>
	      <td><%=total %>
	      <td><%=o_date %>
	<%
	
	
}
}
else{
	out.println("No Order!");
}

%>
</table>
</body>
</html>