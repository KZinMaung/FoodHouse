<html>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
HttpSession ss=request.getSession(false);
String w_id=(String)ss.getAttribute("w_id");
String w_pwd=(String)ss.getAttribute("w_pwd");

request.setAttribute("alertMsg1","Your password is incorrect!");
request.setAttribute("alertMsg2","You must enter the same password twice in order to confirm it!");
request.setAttribute("alertMsg3","You must fill in each text Box!");
String message="";

String w_currentPwd=request.getParameter("w_currentPwd");
String w_newPwd=request.getParameter("w_newPwd");
String w_reTypePwd=request.getParameter("w_ReTypePwd");

if(w_currentPwd=="" || w_newPwd=="" || w_reTypePwd==" "){
	
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

else if(w_currentPwd.equals(w_pwd)){
	  if(w_newPwd.equals(w_reTypePwd)){
		  String sql="Update foodordering.employee_info set password='"+w_newPwd+"' where employee_id='"+w_id+"'";
		  int n=st.executeUpdate(sql);
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
			RequestDispatcher rd=request.getRequestDispatcher("WaiterChgPwd.jsp");
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
	RequestDispatcher rd=request.getRequestDispatcher("WaiterChgPwd.jsp");
	rd.include(request,response);
}

	



%>
</body>
</html>