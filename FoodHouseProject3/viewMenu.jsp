<html>

<head>

<style>

table{

border-collapse:collapse;
width:100%;
}
th{
padding:5px;
text-align:left;
background-color:#848482;
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
<table border=0>
 <tr>
  <th>Menu_id</th>
  <th>Menu_name</th>
  <th>Menu_price</th>
  <th>Menu_catagory</th>
  <th>Menu_status</th>
  </tr>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
  String sql="select * from foodordering.menu ";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next()){
	  String menu_id=rs.getString(1);
	  String menu_name=rs.getString(2);
	  String menu_price=rs.getString(3);
	  String menu_category=rs.getString(6);
	  String menu_status=rs.getString(7);
	  %>
	  
	  <tr>
	   <td><%=menu_id %></td>
	   <td><%=menu_name %></td>
	   <td><%=menu_price %></td>
	   <td><%=menu_category%></td>
	  <td><%=menu_status %></td>
	  
	  </tr>
	  <%	  
  }
  
%>
</table>
</body>
</html>