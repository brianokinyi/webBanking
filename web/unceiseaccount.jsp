<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.Connection, java.sql.DriverManager,java.sql.ResultSet, 
    java.sql.PreparedStatement, javax.servlet.ServletException,javax.servlet.RequestDispatcher, javax.servlet.* ,javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightgrey"  background="file:///C:/Users/Amir/workspace/bank_jsp/piggybank.jpg">
<% response.setContentType("text/html");



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
	   RequestDispatcher rd=request.getRequestDispatcher("/unceise.jsp");  
		 rd.include(request,response);
	  }
	  String 	status= rs.getString("status");
	  if(status.equals("O") || status.equals("N"))
	    { 
		  out.print("Account is already Unseized!!");
		   RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
			
		  rd.include(request,response);
	    
	    }
	    
	    if(status.equals("C"))
	   {status="O";
	    ps.setString(1,status);
	    ps.setString(2,p);
	    ps.executeUpdate();
		  out.print("Account Unseized Successfully!!");
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