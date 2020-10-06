<html>

<body>
<form action="UpdateMenu.jsp">
<%@include file="dbConnector.jsp" %>
<%

String menu_name=request.getParameter("EditMenuName");
HttpSession ss=request.getSession(true);
ss.setAttribute("menu_name",menu_name);




String sql="select * from foodordering.menu where menu_name='"+menu_name+"'";
ResultSet rs=st.executeQuery(sql);

String menu_id="";
int menu_price=0;
String menu_status="";
if(rs.next()){
	 menu_id=rs.getString(1);
	 menu_price=rs.getInt(3);
	 menu_status=rs.getString(7);
	
}
%>
<table border=0  align=center cellpadding=6 bgcolor="#d3d3d3">

<tr><td style="font-weight:bold"><font size=4 >Menu_name:</font><font size=4>&nbsp;&nbsp;&nbsp;&nbsp;<%=menu_name %></font></td></tr>
<tr><th><font size=4 >Menu_price:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' value="<%=menu_price%>" name="editMenuPrice" size=30></th></tr>
<tr><th><font size=4 >Menu_status:</font>&nbsp;&nbsp;&nbsp;<input type='text' value="<%=menu_status %>" name="editMenuStatus" size=30></th></tr>



<tr><td align=center><input type="submit" value="Update"></td></tr></table>
</form>
</body>
</html>