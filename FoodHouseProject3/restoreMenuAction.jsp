<html>
 <body>
 <form action=" " method="post">
 <%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
 <%
  String[] restoreMenuCL=request.getParameterValues("restoreMenuCheckL");
  for(int i=0;i<restoreMenuCL.length;i++){
	   
	  String sql="update foodordering.menu set menu_status='available' where menu_name='"+restoreMenuCL[i]+"'";
	  int n=st.executeUpdate(sql);
	  if(n==1)
	  {
		  out.println("<font size=5 face='' color='blue'>Successfully Restored!!</font>");
	  }
  }
 %>
 </form>
 </body>
</html>