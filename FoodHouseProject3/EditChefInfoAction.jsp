<html>
<head>

</head>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>


<%


String name=request.getParameter("e_name");
String phone=request.getParameter("e_ph");
String email=request.getParameter("e_email");
String address=request.getParameter("e_address");

try{
	HttpSession s1=request.getSession(false);
	String cf_id=(String)(s1.getAttribute("cf_id"));
	 String insertStr="Update foodordering.employee_info set employee_name='"+name+"',employee_phone='"+phone+"',employee_email='"+email+"',employee_address='"+address+"' where employee_id='"+cf_id+"'";
	 
	    int n=st.executeUpdate(insertStr);
	    if(n==1)
		  {
			  out.println("<font size=5 face='' color='blue'>Successfully Updated!!</font>");
		  }
	
 
	
}
catch(Exception ex){

}

%>

</body></html>
