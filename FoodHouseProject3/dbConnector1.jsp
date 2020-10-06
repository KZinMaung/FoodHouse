
<%
Class.forName("com.mysql.jdbc.Driver");
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/foodordering","root","root");
		Statement st1=con1.createStatement();
		
		
		 %>