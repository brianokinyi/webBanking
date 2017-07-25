<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.Connection, java.sql.DriverManager,java.sql.ResultSet, 
    java.sql.PreparedStatement, javax.servlet.ServletException,javax.servlet.RequestDispatcher, javax.servlet.* ,javax.servlet.http.*"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body style="background-color:lightgrey">
<%response.setContentType("text/html");
int i=0;

  String q=request.getParameter("uname");
  String r=request.getParameter("upass");

 try{

  Class.forName("com.mysql.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebanking","root","");
  PreparedStatement ps=conn.prepareStatement("insert into employee(username,password)values(?,?)");
  PreparedStatement ps1=conn.prepareStatement("select username from employee");
 ResultSet rs= ps1.executeQuery();
 int uid=Integer.parseInt(q.trim());
 while(rs.next())
 {if(uid == rs.getInt("username"))
 {
	 out.println("userID already taken!!!");
	  RequestDispatcher rd=request.getRequestDispatcher("/Signup.jsp");
	  rd.include(request, response);
 }
	 
 }
  if( q.equals("") || r.equals(""))
  {out.println("please fill in all the details to register!!!!!!!");
  RequestDispatcher rd=request.getRequestDispatcher("/Signup.jsp");
  rd.include(request, response); }
   
else{
	  
	  ps.setInt(1, uid);
	  ps.setString(2, r);
	   i=ps.executeUpdate();
  }
  if(i>0)
  {
	  out.println("You are Successfully Registered...!!!<br>Please Login Now....");
	  RequestDispatcher rd=request.getRequestDispatcher("/home.jsp");  
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