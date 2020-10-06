<html>
<head>

</head>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>


<%


String w_name=request.getParameter("w_name");
String w_phone=request.getParameter("w_ph");
String w_email=request.getParameter("w_email");
String w_address=request.getParameter("w_address");

try{
	HttpSession s2=request.getSession(false);
	String w_id=(String)(s2.getAttribute("w_id"));
	 String insertStr="Update foodordering.employee_info set employee_name='"+w_name+"',employee_phone='"+w_phone+"',employee_email='"+w_email+"',employee_address='"+w_address+"' where employee_id='"+w_id+"'";
	 
	   int n= st.executeUpdate(insertStr);
	   if(n==1)
		  {
			  out.println("<font size=5 face='' color='blue'>Successfully Updated!!</font>");
		  }
	    
	
 
	
}
catch(Exception ex){

}

%>

</body></html>
