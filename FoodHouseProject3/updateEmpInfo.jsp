<html>
<body>

<form action="" method="post">
   <%@include file="importfile.jsp" %>
   <%@include file="dbConnector.jsp" %>
   
   <%
   HttpSession ss=request.getSession(false);
   String emp_name=(String)(ss.getAttribute("emp_name"));
  //out.println(menu_name);
    
   
String emp_phone=request.getParameter("emp_ph");
String emp_email=request.getParameter("emp_email");
String emp_address=request.getParameter("emp_adr");
String emp_status=request.getParameter("emp_sts");
String working_status=request.getParameter("wk_sts");
   
   
   int n=st.executeUpdate("Update foodordering.employee_info set employee_phone='"+emp_phone+ "',employee_email='"+emp_email+"',employee_address='"+emp_address+ "',employee_status='"+emp_status+ "',working_status='"+working_status+ "'  where employee_name='"+emp_name+"'");   
   if(n==1)
	  {
		  out.println("<font size=5 face='' color='blue'>Successfully Updated!!</font>");
	  }
   %>
   </form>
</body>
</html>