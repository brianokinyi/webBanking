<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.Connection, java.util.*,java.sql.DriverManager,java.sql.ResultSet, 
    java.sql.PreparedStatement, javax.servlet.ServletException,javax.servlet.RequestDispatcher,  java.sql.ResultSet,javax.servlet.* ,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightgrey">
<% 
response.setContentType("text/html");
	
	
	
	String p=request.getParameter("accno.");
	
	try{
		
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebanking","root","");
		  PreparedStatement ps=conn.prepareStatement("update customer set status=? where acc_no=?");
		  PreparedStatement pst=conn.prepareStatement("select * from customer where acc_no=? ");
		  pst.setString(1,p);
		  ResultSet rs=pst.executeQuery();

		  boolean x=rs.next();
		  
		  
		  if(!x)
		  { out.print("Please enter valid account no.");
		   RequestDispatcher rd=request.getRequestDispatcher("/ceise.jsp");  
			 rd.include(request,response);
		  }
		  String 	status= rs.getString("status");
		    if(status.equals("C"))
		   {
			   out.print("This  Account Is Already Seized!!!");
			   RequestDispatcher rd=request.getRequestDispatcher("/main_menu.jsp");  
				 rd.include(request,response);
		   }
		    if(status.equals("O") || status.equals("N"))
		    { status="C";
		   
		    ps.setString(1,status);
		    ps.setString(2,p);
		    ps.executeUpdate();
			  out.print("Account Seized Successfully!!");
			   RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
				
			  rd.include(request,response);
		    
		    }
		    
	}
	catch(Exception ex)
	 {	
	  ex.printStackTrace();
	 }
	%>
</body>
</html>