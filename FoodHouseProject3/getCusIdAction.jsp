<html>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
String cus_id="";

HttpSession ss=request.getSession(false);

String c_fname=(String)(ss.getAttribute("c_fname"));
String c_lname=(String)(ss.getAttribute("c_lname"));
String sql="select customer_id from foodordering.customer_info where customer_firstname='"+c_fname+"' and customer_lastname='"+c_lname+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next()){
	 cus_id=rs.getString(1);
	 %>
		<script type="text/javascript">
		 var msg1="Use this ID to Login:"+"<%=cus_id%>";
		 alert(msg1);
	     
		</script>
		<%
		RequestDispatcher rd1=request.getRequestDispatcher("customerLogin.jsp");
		rd1.include(request,response);
}


%>
</body>
</html>