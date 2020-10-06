<html>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
HttpSession s1=request.getSession(false);
String cf_id=(String)s1.getAttribute("cf_id");
String cf_pwd=(String)s1.getAttribute("cf_pwd");

request.setAttribute("alertMsg1","Your password is incorrect!");
request.setAttribute("alertMsg2","You must enter the same password twice in order to confirm it!");
request.setAttribute("alertMsg3","You must fill in each text Box!");
String message="";


String cf_currentPwd=request.getParameter("cf_currentPwd");
String cf_newPwd=request.getParameter("cf_newPwd");
String cf_reTypePwd=request.getParameter("cf_ReTypePwd");

if(cf_currentPwd=="" || cf_newPwd=="" || cf_reTypePwd==" "){
	
	 message=(String)request.getAttribute("alertMsg3");
		%>
		<script type="text/javascript">
		 var msg2="<%=message%>";
		 alert(msg2);
	     
		</script>
		<%
		RequestDispatcher rd=request.getRequestDispatcher("ChefChgPwd.jsp");
		rd.include(request,response);
}
	

else if(cf_currentPwd.equals(cf_pwd)){
	  if(cf_newPwd.equals(cf_reTypePwd)){
		  String sql="Update foodordering.employee_info set password='"+cf_newPwd+"' where employee_id='"+cf_id+"'";
		  int n= st.executeUpdate(sql);
		  if(n==1)
		  {
			  out.println("<font size=5 face='' color='blue'>Successfully Changed Password!!</font>");
		  }
		  }
	  else{
		  message=(String)request.getAttribute("alertMsg2");
			%>
			<script type="text/javascript">
			 var msg1="<%=message%>";
			 alert(msg1);
		     
			</script>
			<%
			RequestDispatcher rd=request.getRequestDispatcher("ChefChgPwd.jsp");
			rd.include(request,response);
		  
	  }
}
else
{
	message=(String)request.getAttribute("alertMsg1");
	%>
	<script type="text/javascript">
	 var msg="<%=message%>";
	 alert(msg);
     
	</script>
	<%
	RequestDispatcher rd=request.getRequestDispatcher("ChefChgPwd.jsp");
	rd.include(request,response);
}

	



%>
</body>
</html>