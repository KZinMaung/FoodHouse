<html>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%
HttpSession ss=request.getSession(false);
String adm_id=(String)ss.getAttribute("adm_id");
String adm_pwd=(String)ss.getAttribute("adm_pwd");


request.setAttribute("alertMsg1","Your password is incorrect!");
request.setAttribute("alertMsg2","You must enter the same password twice in order to confirm it!");
request.setAttribute("alertMsg3","You must fill in each text Box!");
String message="";



String currentPwd=request.getParameter("currentPwd");
String newPwd=request.getParameter("newPwd");
String reTypePwd=request.getParameter("ReTypePwd");

if(currentPwd=="" || newPwd=="" || reTypePwd==" "){

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


else if(currentPwd.equals(adm_pwd)){
	  if(newPwd.equals(reTypePwd)){
		  String sql="Update foodordering.admin_info set password='"+newPwd+"' where admin_id='"+adm_id+"'";
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
			RequestDispatcher rd=request.getRequestDispatcher("AdminChgPwd.jsp");
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
	RequestDispatcher rd=request.getRequestDispatcher("AdminChgPwd.jsp");
	rd.include(request,response);
	
}

	



%>
</body>
</html>