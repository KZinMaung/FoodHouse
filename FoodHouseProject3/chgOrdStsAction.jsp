<html>
<body>
<%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
<%



String chkOrdId;
String[] chkList=request.getParameterValues("chkOrder");
for(int i=0;i<chkList.length;i++){
	int n=st.executeUpdate("Update foodordering.order set status='fulfilled' where order_id='"+chkList[i]+"'");
	 if(n==1)
	  {
		  out.println("<font size=5 face='' color='blue'>Successfully Changed Order Status!!</font>");
	  }
	
}

%>
</body>
</html>