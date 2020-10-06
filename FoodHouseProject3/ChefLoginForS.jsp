<html>
<head>

</head>
<body>


<%@ page import="java.io.*,java.util.*, javax.servlet.*" %> 
<%@ page import="javax.servlet.http.*" %>
<%@page import="java.sql.*" %>

<%
request.setAttribute("alertMsg1","Login fail! Try Again!!");
request.setAttribute("alertMsg2","You must fill in each text Box!");
String message="";


String id=request.getParameter("chefId");
String password=request.getParameter("chefPwd");

HttpSession s1=request.getSession(true);
s1.setAttribute("cf_id",id);
s1.setAttribute("cf_pwd",password);

if(id==""||password==""){
	message =(String)request.getAttribute("alertMsg2");
	%>
	<script type="text/javascript">
	 var msg1="<%=message%>";
	 alert(msg1);
     
	</script>
	<%
	RequestDispatcher rd=request.getRequestDispatcher("ChefLogin.jsp");
	rd.include(request,response);
	
}
else{
	
	

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
	Statement st=con.createStatement();
	String sqlquery="select * from employee_info where employee_id='"+id+"' and password='"+password+"' and employee_status='chef'";
	System.out.println("database query");
	ResultSet rs=st.executeQuery(sqlquery);
	if(rs.next()){
	response.sendRedirect("ChefPage1.html");
	}
	else{
		message =(String)request.getAttribute("alertMsg1");
		%>
		<script type="text/javascript">
		 var msg="<%=message%>";
		 alert(msg);
	     
		</script>
		<%
		RequestDispatcher rd=request.getRequestDispatcher("ChefLogin.jsp");
		rd.include(request,response);;
	}
}
catch(Exception ex){

}

}
%>


</body>

</html>