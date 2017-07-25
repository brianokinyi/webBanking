<%-- 
    Document   : addaccount1
    Created on : Jul 24, 2017, 12:43:22 AM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.Connection, java.sql.DriverManager,java.sql.ResultSet, 
    java.sql.PreparedStatement, javax.servlet.ServletException,javax.servlet.RequestDispatcher, javax.servlet.* ,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Account</title>
</head>
<body style="background-color:lightgrey">
<% response.setContentType("text/html");
try{
    Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebanking","root","");


PreparedStatement ps=conn.prepareStatement("insert into customer(customer_name,address,balance,status)values(?,?,?,?)");
  String r=request.getParameter("customer_name");
  String s=request.getParameter("address");
  String p=request.getParameter("net_banking");
  
  pageContext.setAttribute("option",p,PageContext.SESSION_SCOPE );
  int o=0,i=0;
  if( r.equals("") || s.equals(""))
	 { out.print("Please Enter All the Details Correctly!!!!");
	  RequestDispatcher rd=request.getRequestDispatcher("/add_account.jsp");
	  rd.include(request, response); 
	  o=1;
	 }
  if((request.getParameter("net_banking")!=null)&& o==0)
  { if(p.equals("yes"))
  {out.print("<div align='center'><form action='addaccount.jsp' >Customer Name:<input type='text' name='customer_name' value="+r);
  out.print("><br><br>Local Address:<input type='text' name='address' value="+s);
  		out.print("><br><br>Net Banking:<br><input type='radio' name='net_banking' value='yes' checked>Yes<br><input type='radio' name='net_banking' value='no' unchecked>No<br><br>Password:<input type='password' name='password'><br><br><input type='submit' value='Submit'></form</div>");
  }
  if(p.equals("no")&&o==0){ 
    ps.setString(1,r);
    ps.setString(2,s);
    ps.setString(3, "0");
    ps.setString(4, "N");
    i=ps.executeUpdate();
  }
  if(i>0 )
  {
  out.print(" Account Has Been Created Successfully!!!<br>Please Add Some Balance To The Account!!!!");
  RequestDispatcher rde=request.getRequestDispatcher("/index.jsp");
  rde.include(request, response);
  
}
  
}
}
  catch(Exception ex)
	 {	
	  ex.printStackTrace();
	 }

%>
</body>
</html>
