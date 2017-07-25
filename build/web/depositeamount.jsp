<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.util.*,java.sql.Connection, java.sql.DriverManager,java.sql.ResultSet, 
    java.sql.PreparedStatement, javax.servlet.ServletException,javax.servlet.RequestDispatcher, javax.servlet.* ,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit</title>
</head>
<body style="background-color:lightgrey">
<%  response.setContentType("text/html");
int n=0;
Date date=new Date();
String time=date.toString();
String p=request.getParameter("accno.");

String q=request.getParameter("amount");

try{
	
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebanking","root","");
	  PreparedStatement ps=conn.prepareStatement("update customer set balance=?,status=? where acc_no=?");
	  PreparedStatement pst=conn.prepareStatement("select * from customer where acc_no=? ");
	  PreparedStatement ps1=conn.prepareStatement("insert into transaction(balance,action,date,acc_no)values(?,?,?,?)");
	  
	  pst.setString(1,p);
	  
	  
	  
	  ResultSet rs=pst.executeQuery();
	  boolean x=rs.next();
	  if(!x)
	  { out.print("Please enter valid account no.");
	   RequestDispatcher rd=request.getRequestDispatcher("/deposite.jsp");  
		 rd.include(request,response);
	  }
	  
	  
	 
	  
		  n=rs.getInt("balance");
	     String status= rs.getString("status");
	 
	 
	  n =Integer.parseInt(q.trim()) + n;
	  
	  String value= Integer.toString(n);
	   
	   if(status.equals("N"))
	   {status="O";
	   ps.setString(1,value);
	   ps.setString(2, status);
	   ps.setString(3, p);
	  ps.executeUpdate();
          
	  ps1.setString(1,q );
	  ps1.setString(2,"Deposited" );
	  ps1.setString(3,time );
	  ps1.setString(4, p);
	  ps1.executeUpdate();
	  out.print("Balance added successfully!!");
	  RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
          rd.include(request,response);
	   
	  
	   }
	  
	  
	  
	   else if(status.equals("O"))
	   {ps.setString(1,value);
	   ps.setString(2, status);
	   ps.setString(3, p);
	  ps.executeUpdate();
	  ps1.setString(1,q );
	  ps1.setString(2,"Deposited" );
           ps1.setString(3,time );
	  ps1.setString(4, p);	  
	  ps1.executeUpdate();
          
	  out.print("Balance added successfully!!");
	   RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
		
	  rd.include(request,response);
	   
	   } 
	   
	   else if(status.equals("C"))
	   {
		   out.print("Sorry This Account Has Been Seized!!<br>Unseize the account to add balance!!!");
		   RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
			 rd.include(request,response);
	   }
	   else if(status.equals("X"))
	   {
		   out.print("Sorry This Account Has Been Closed !!<br>Can't Add balance!!!");
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