<html>
 <body>
 <%@ include file="importfile.jsp" %>
<%@include file="dbConnector.jsp" %>
 <%
 String menu_name="";
 int menu_price=0;
 
 String c_id="";
 String c_pwd="";
 String menu_id="";
 String c_fName="";
 String c_lName="";
 int total=0;
 String order_d="";
 
 
 
 HttpSession ss1=request.getSession(false);
 HttpSession ss=request.getSession(false);
 order_d=(String)(ss1.getAttribute("order_d"));
	//get order date
 
 String[] orderlist=(String[])(ss1.getAttribute("orderlist"));
 if(orderlist.length!=0)	{
		for(int i=0;i<orderlist.length;i++){
			menu_id= orderlist[i];
			String sql="select menu_name,menu_price from foodordering.menu where menu_id='"+menu_id+"'";
			ResultSet rs=st.executeQuery(sql);
		   if(rs.next()){
			  menu_name=rs.getString(1);
			  menu_price=rs.getInt(2);
		   }
			//get menu_name and menu_price
			
			 int qty=(Integer)(ss1.getAttribute("'"+menu_id+"'"));
			
			//int qty=0;
			// qty=Integer.parseInt(quantity);
			
			//get order_qty
			
			c_id=(String)(ss.getAttribute("c_id"));
			
			%>
			
			<%@include file="dbConnector1.jsp" %>
			<%
			
			String sql1="select customer_firstname,customer_lastname from foodordering.customer_info where customer_id='"+c_id+"'";
			ResultSet rs1=st1.executeQuery(sql1);
			if(rs1.next()){
				c_fName=rs1.getString(1);
				c_lName=rs1.getString(2);
			}
			//get customer firstName and lastname
		
			total=qty*menu_price;//get total price
			
		 
			
		%>	
		<%@include file="dbConnector2.jsp" %>
		<%
			String sql2="insert into foodordering.order(customer_firstname,customer_lastname,menu_name,quantity,total,date) values ('"+c_fName+"','"+c_lName+"','"+menu_name+"','"+qty+"','"+total+"','"+order_d+"')";
		    st2.executeUpdate(sql2);
		}
 }
		
		else{
			
		}
 
 %>
 </body>
</html>