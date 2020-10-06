<html>

<body>

<%@include file="importfile.jsp" %>

<%

request.setAttribute("alertMsg2","You must fill in each text Box!");
request.setAttribute("alertMsg3","You have already registered!!");
String message="";
String cus_id="";

System.out.println("K");
String cus_fname=request.getParameter("c_fname");
String cus_lname=request.getParameter("c_lname");
String cus_ph=request.getParameter("c_ph");
String cus_email=request.getParameter("c_emailadr");
String cus_adr=request.getParameter("c_adr");
String cus_pwd=request.getParameter("c_pwd");

HttpSession ss=request.getSession(true);
	
	ss.setAttribute("c_fname",cus_fname);
	ss.setAttribute("c_lname",cus_lname);


%>
<% 
if(cus_fname==""||cus_lname=="" || cus_ph=="" || cus_email=="" || cus_adr==""){
	
	message =(String)request.getAttribute("alertMsg2");
	%>
	<script type="text/javascript">
	 var msg2="<%=message%>";
	 alert(msg2);
     
	</script>
	<%
	
	RequestDispatcher rd=request.getRequestDispatcher("customerRegistration.jsp");
	rd.include(request,response);
	
}
else{
try{
	%>
	<%@include file="dbConnector.jsp" %>
	<%
	String sqlquery="select * from customer_info where customer_firstname='"+cus_fname+"' and customer_lastname='"+cus_lname+"'";
	System.out.println("database query");
	ResultSet rs=st.executeQuery(sqlquery);
	if(rs.next()){
		message =(String)request.getAttribute("alertMsg3");
		%>
		<script type="text/javascript">
		 var msg3="<%=message%>";
		 alert(msg3);
	     
		</script>
		<%
	RequestDispatcher rd=request.getRequestDispatcher("customerRegistration.jsp");
	rd.include(request,response);
		//<redirect to this page>
		
	}
	else{
		
		
		 String insertStr="insert into customer_info(customer_firstname,customer_lastname,customer_phone,customer_email,customer_address,password) values ('"+cus_fname+"','"+cus_lname+"','"+cus_ph+"','"+cus_email+"','"+cus_adr+"','"+cus_pwd+"')";
		 
		    int n=st.executeUpdate(insertStr);
		    if(n==1)
			  {
				// out.println("<font size=5 face='' color='blue'>Successfully Registered!!</font>");
				response.sendRedirect("getCusId.jsp");
			   }
		 
			
		}
}
	
 catch(Exception ex){
 }
}
 %>
 </body>
 </html>
 
 
 