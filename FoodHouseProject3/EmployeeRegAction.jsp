<html>
<body>
<%@include file="importfile.jsp" %>
<%
request.setAttribute("alertMsg2","You must fill in each text Box!");
String message="";
String e_id=request.getParameter("e_id");
String e_name=request.getParameter("e_name");

String e_ph=request.getParameter("e_ph");
String e_emailadr=request.getParameter("e_emailadr");
String e_adr=request.getParameter("e_adr");
String e_status=request.getParameter("e_status");
String e_pwd=request.getParameter("e_pwd");

if(e_id==""||e_name=="" || e_ph=="" || e_emailadr==""|| e_status==" " || e_pwd==" "){
	message =(String)request.getAttribute("alertMsg2");
	%>
	<script type="text/javascript">
	 var msg1="<%=message%>";
	 alert(msg1);
     
	</script>
	<%
	RequestDispatcher rd=request.getRequestDispatcher("EmployeeRegistration.jsp");
	rd.include(request,response);
	
}
else{
	try{
		%>
		<%@include file="dbConnector.jsp" %>
		<%
		String sql="select * from foodordering.employee_info where employee_id='"+e_id+"'";
		ResultSet rs=st.executeQuery(sql);
		if(rs.next()){
			response.sendRedirect("EmployeeRegistration.jsp");
		}
		else{
			String insertSql="insert into foodordering.employee_info(employee_id,employee_name,employee_phone,employee_email,employee_address,employee_status,password)values('"+e_id+"','"+e_name+"','"+e_ph+"','"+e_emailadr+"','"+e_adr+"','"+e_status+"','"+e_pwd+"')";
		    int n=st.executeUpdate(insertSql);
		    if(n==1)
			  {
				  out.println("<font size=5 face='' color='blue'>Successfully Registered!!</font>");
			  }
		}
	}
	catch(Exception ex){
		
	}

}
%>
</body>
</html>