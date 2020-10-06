<html>
<body>

<form action="" method="post">
   <%@include file="importfile.jsp" %>
   <%@include file="dbConnector.jsp" %>
   
   <%
   HttpSession ss=request.getSession(false);
   String menu_name=(String)(ss.getAttribute("menu_name"));
  //out.println(menu_name);
    
   int menu_p= Integer.parseInt(request.getParameter("editMenuPrice"));
   //out.print(menu_p);
   String menu_status=request.getParameter("editMenuStatus");
   //out.print(menu_status);
   
   
   int n=st.executeUpdate("Update foodordering.menu set menu_price="+ menu_p+ ",menu_status='"+ menu_status +"'  where menu_name='"+menu_name+"'");   
   if(n==1)
	  {
		  out.println("<font size=5 face='' color='blue'>Successfully Updated!!</font>");
	  }
   %>
   </form>
</body>
</html>