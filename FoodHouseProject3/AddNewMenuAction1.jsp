<%@include file="dbConnector.jsp" %>

<%@ page import="java.io.*,java.util.*, javax.servlet.*" %> 
<%@ page import="javax.servlet.http.*" %>
 <%@ page import="org.apache.commons.fileupload.*" %>
  <%@ page import="org.apache.commons.fileupload.disk.*" %> 
  <%@ page import="org.apache.commons.fileupload.servlet.*" %>
 <%@ page import="org.apache.commons.io.output.*" %>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%> 
 <%@ page import="java.lang.*"%>
 

<%
	
	String menu_id="";
    String menu_name="";
    int menu_price=0;
    String menu_p="";
    String menu_catagory="";
    String menu_status="";
    String img_url=" ";
	
	

		 File file ; 
		   int maxFileSize = 8000 * 1024; 
		   int maxMemSize = 8000 * 1024;
		   ServletContext context = pageContext.getServletContext();
		   String filePath = "G:\\J2EE project\\workspace\\FoodHouseProject3\\images";
		 
		 
		   String contentType = request.getContentType(); 
		   if ((contentType.indexOf("multipart/form-data") >= 0))
		   {
			   DiskFileItemFactory factory = new DiskFileItemFactory(); 
		  
		   factory.setSizeThreshold(maxMemSize);
		  
		   factory.setRepository(new File("C:\\temp")); 
		   
		   ServletFileUpload upload = new ServletFileUpload(factory); 
		   
		   upload.setSizeMax( maxFileSize );
		
			 
			   List fileItems = upload.parseRequest(request); 
			  
			   Iterator i = fileItems.iterator(); 
			   
			   while ( i.hasNext () ) 
			   { FileItem fi = (FileItem)i.next();
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("menu_id")){
					  menu_id = fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("menu_name")){
					   menu_name= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("menu_price")){
					   menu_p= fi.getString();
					   
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("menu_catagory")){
					   menu_catagory= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("menu_status")){
					   menu_status= fi.getString();
				   }
			   }
			   
			   
			   if ( !fi.isFormField () ) { 
				
				   String fieldName = fi.getFieldName();
				   String fileName = fi.getName();
				
				   
				  if(fieldName.equals("img_file")){
					   boolean isInMemory = fi.isInMemory(); 
					   long sizeInBytes = fi.getSize(); 
					   if( fileName.lastIndexOf("\\") >= 0 )
					   { file = new File(filePath + fileName.substring( fileName.lastIndexOf("\\"))) ; 
					   }else
					   { file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ; 
					   } 
					   fi.write(file) ; 
					  //out.println("Uploaded Filename: " + filePath + fileName.substring( fileName.lastIndexOf("\\")) + "<br>");
					    img_url=fileName.substring( fileName.lastIndexOf("\\")+1);
					 
				  }
				  } 
			}
		 	
			  
			
			  
			  
		   }
		  
		
			   try{		
				   menu_price=Integer.parseInt(menu_p);
					String sqlquery="insert into foodordering.menu(menu_id,menu_name,menu_price,menu_image,menu_catagory,menu_status) values('" + menu_id + "','" + menu_name + "',"+ menu_price+",'" + img_url + "','" + menu_catagory + "','"+menu_status+"')";
					int result = st.executeUpdate(sqlquery);
					if(result == 1){
						out.println("<font size=5 face='' color='blue'>Successfully Inserted!!</font>");
					}
			   
			   }
		   catch(Exception ex){
						out.println(ex);
					}
	
	%>

