<html>

<head>

<style>

table{

border-collapse:collapse;
width:30% ;
height:35%;
}
th{
padding:8px;

}


td{

padding:3px;
border-bottom:1px solid black;

}




</style>
</head>
 <body>
   <form action="restoreMenuAction.jsp" target="bodyOfFun">
   <table border=0 align=center bgcolor="#d3d3d3">
    <tr> 
      <th align=left>Check</th>
      <th align=left>Menu_name</th>
      </tr>
      <%@include file="importfile.jsp" %>
       <%@include file="dbConnector.jsp" %>
      <%
        String menu_name;
        String sql="select menu_name from foodordering.menu where menu_status='notavailable'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
        	menu_name=rs.getString(1);
        	%>
        	 <tr>
        	   <td><input type="checkbox" name="restoreMenuCheckL" value="<%=menu_name%>"></td>
        	   <td><%= menu_name %>
        	 </tr>
        	<%
        }
        
      
      
      %>
    <tr><td></td><td><input type="submit" value="Restore"></td></tr>
      
   </table>    </form> 
   
    
 </body>
</html>