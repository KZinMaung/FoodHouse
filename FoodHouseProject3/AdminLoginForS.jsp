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


String id=request.getParameter("id");
String password=request.getParameter("pwd");

HttpSession ss=request.getSession(true);
ss.setAttribute("adm_id",id);
ss.setAttribute("adm_pwd",password);


if(id==""||password==""){
	message =(String)request.getAttribute("alertMsg2");
	%>
	<script type="text/javascript">
	 var msg1="<%=message%>";
	 alert(msg1);
     
	</script>
	<%
	RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
	rd.include(request,response);
	
}
else{
	
	

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
	Statement st=con.createStatement();
	String sqlquery="select * from admin_info where admin_id='"+id+"' and password='"+password+"'";
	System.out.println("database query");
	ResultSet rs=st.executeQuery(sqlquery);
	if(rs.next()){
		
		
	response.sendRedirect("AdminPage1.jsp");
		
		 
	}
	else{
		message =(String)request.getAttribute("alertMsg1");
		%>
		<script type="text/javascript">
		 var msg="<%=message%>";
		 alert(msg);
	     
		</script>
		<%
		RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
		rd.include(request,response);
		 
		}
}
catch(Exception ex){

}

}
%>


</body>

</html>