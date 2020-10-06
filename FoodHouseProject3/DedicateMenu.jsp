<html>

<head>

<style>

table{

border-collapse:collapse;
width:60%;
}
th{
padding:8px;

}


td{

padding:5px;
border-bottom:1px solid black;

}




</style>
</head>
 <body>
   <form action="dedicateMenuAction.jsp" target="bodyOfFun">
   <table border=0 align=center>
    <tr> 
      <th align="right">Check</th>
      <th align=left>Menu_name</th>
      </tr>
      <%@include file="importfile.jsp" %>
       <%@include file="dbConnector.jsp" %>
      <%
        String menu_name;
        String sql="select menu_name from foodordering.menu where menu_status='available'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
        	menu_name=rs.getString(1);
        	%>
        	 <tr>
        	   <td align=right><input type="checkbox" name="dedicateMenuCheckL" value="<%=menu_name%>"></td>
        	   <td align=left><%= menu_name %>
        	 </tr>
        	<%
        }
        
      
      
      %>
     
      
   </table><br>
   <center> <input type="submit" value="Dedicate"></center>
    </form>
 </body>
</html>