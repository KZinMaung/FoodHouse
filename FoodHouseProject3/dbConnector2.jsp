
<%
Class.forName("com.mysql.jdbc.Driver");
		Connection con2=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
		Statement st2=con2.createStatement();
		
		
		 %>