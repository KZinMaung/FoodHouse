<html>
<head>
<script>



</script>
</head>
<body>



<%@ page import="java.io.*,java.util.*, javax.servlet.*" %> 
<%@ page import="javax.servlet.http.*" %>
<%@page import="java.sql.*" %>

<%

request.setAttribute("alertMsg1","Login fail! Try Again!!");
request.setAttribute("alertMsg2","You must fill in each text Box!");

String message;
String id=request.getParameter("c_id");
String password=request.getParameter("c_pwd");
HttpSession ss1=request.getSession(true);
ss1.setAttribute("c_id",id);
ss1.setAttribute("c_pwd",password);

if(id==""||password==""){
	message =(String)request.getAttribute("alertMsg2");
	%>
	<script type="text/javascript">
	 var msg1="<%=message%>";
	 alert(msg1);
     
	</script>
	<%
	RequestDispatcher rd=request.getRequestDispatcher("customerLogin.jsp");
	rd.include(request,response);
	
	
}
else{
	
	

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
	Statement st=con.createStatement();
	String sqlquery="select * from customer_info where customer_id='"+id+"' and password='"+password+"'";
	System.out.println("database query");
	ResultSet rs=st.executeQuery(sqlquery);
	if(rs.next()){
	response.sendRedirect("OrderPage.jsp");
	}
	else{
		
		message =(String)request.getAttribute("alertMsg1");
		%>
		<script type="text/javascript">
		 var msg="<%=message%>";
		 alert(msg);
	     
		</script>
		<%
		RequestDispatcher rd=request.getRequestDispatcher("customerLogin.jsp");
		rd.include(request,response);
	}
}
catch(Exception ex){

}

}
%>


</body>

</html>