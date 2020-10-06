<html>
<head>

</head>
<body>


<%@ page import="java.io.*,java.util.*, javax.servlet.*" %> 
<%@ page import="javax.servlet.http.*" %>
<%@page import="java.sql.*" %>

<%

String fname=request.getParameter("adfname");
String lname=request.getParameter("adlname");
String phone=request.getParameter("adph");
String email=request.getParameter("ademail");
String address=request.getParameter("adaddress");
String password=request.getParameter("adpassword");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
	Statement st=con.createStatement();
	 String insertStr="Update foodordering.admin_info set admin_fName='"+fname+"',admin_lName='"+lname+"',admin_phone='"+phone+"',admin_email='"+email+"',admin_address='"+address+"',password='"+password+"'";
	 
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
