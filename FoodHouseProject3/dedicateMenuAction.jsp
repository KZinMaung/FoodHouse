<html>
 <body>
 <form action=" " method="post">
 <%@include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
 <%
  
  String[] dedicateMenuCL=request.getParameterValues("dedicateMenuCheckL");
 
  for(int i=0;i<dedicateMenuCL.length;i++){
	  
	  String sql="update foodordering.menu set menu_status='notavailable' where menu_name='"+dedicateMenuCL[i]+"'";
	  int n=st.executeUpdate(sql);
	  if(n==1)
	  {
		  out.println("<font size=5 face='' color='blue'>Successfully Dedicated!!</font>");
	  }
  }
 
 %>
 </form>
 </body>
</html>