<%-- 
    Document   : index
    Created on : Jul 24, 2017, 12:32:05 AM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<title>Home | My Bank</title>

<style>
    html{
	padding-right: 100px;
	padding-left: 100px;
        font-family: sans-serif;
    }
    body{
            background-color:lightgrey;
    }
    h1{
            color: rgb(224, 245, 213); 
            text-align: center; 
            font-family: sans-serif;
            
    }
    input{
        height: 35px;
    }
    .maintext{
        position: relative;
        top: 50%;
        transform: translateY(-50%);
        color: rgb(224, 245, 213); 
        text-align: center; 
        font-family: sans-serif;
        font-size: 2em;
    }
    .top{
        background-color: rgb(0, 103, 217);
        height: 200px;
    }
    .side-to-side{
        float: left;
        width: 140px;
        height: 50px;

    }
   
    #bottom{
        position: relative;
        bottom: 0;
        left: 0;
    }
    #content1
{
    width: 100%;
margin:0 auto; 
}
#content1 h1
{
font:bold italic 22px/79px Arial, Helvetica, sans-serif;
color:rgb(0, 5, 75);
padding-left:30px;
}
#content1 p
{
font:normal 12px/18px Arial, Helvetica, sans-serif;
color: #282828;
padding:5px 15px 0 15px;
}
.con
{
width:290px;
}
#rcorners1 {
    border-radius: 25px;
    border: 2px solid rgb(240, 0, 0);
    padding: 20px; 
    width: 80px;
    height: 15px;    
    float: right;
    position: absolute;
    right: 120px;
    top: 140px;
}
</style>
</head>

<body>
    <div class="top" >
        <div class="maintext">
            ONLINE BANKING SYSTEM<br><i>Extraordinary Services</i>
            
        </div>
        <a id="rcorners1" href="home.jsp">Staff Login</a>
    </div>
    <br>
    <hr>
    <div style="dislplay: inline-block;">
    <div class="side-to-side">
        <form action="add_account.jsp">
        <input type="submit" value="Get New Account">
        </form>
    </div>
      
    <div class="side-to-side">
    <form action="info.jsp">
    <input type="submit" value="Get Account Info">
    </form>
    </div>
    
    <div class="side-to-side">
    <form action="deposite.jsp">
    <input type="submit" value="Deposit Amount">
    </form>
    </div>

    <div class="side-to-side">
    <form action="withdrawal.jsp">
    <input type="submit" value="Withdrawal Amount">
    </form>
    </div>

    <div class="side-to-side">
    <form action="transfer.jsp">
    <input type="submit" value="Transfer Amount">
    </form>
    </div>

    <div class="side-to-side">
    <form action="ceise.jsp" >
    <input type="submit" value="Seize Account">
    </form>
    </div>

    <div class="side-to-side">
    <form action="unceise.jsp">
    <input type="submit" value="Unseize Account">
    </form>
    </div>

    <div class="side-to-side">
    <form action="close.jsp" >
    <input type="submit" value="Close Account">
    </form>
    </div>
       </div>
    <hr>
    
    

        
    
    
    
    <table cellpadding="0" cellspacing="0" id="content1"><tr align="justify">
	<td class="con" valign="top">
    	<div id="heade1"><h1>Results</h1></div>
        <p>The online banking system is an electronics funds transfer service that allows a secure and almost immediate transfer of its users between accounts. In contrast with
            manual banking, an transaction can take less than a minute.</p>
        <p>The online banking system is available 24 hours a day, 7 days a week. Customer who have oppened accounts with the
            bank can use inter account transfers of as much amount they need as possible per transaction, subject to their daily
            or monthly transactions.</p>
      

</p>
    </td>
    
    <td class="con" valign="top">
    	<div id="heade2"><h1>Opportunities</h1></div>
        <p>With the online banking, there are reduced costs of transactions. Banking relationships and costs are often based
            on resource requirements. Businesses that place more demanding on banking employees and need more physical
            assistance with wire transfers, deposits, research requests and other banking activities often incur higher banking fees.
        </p>
        <p>Utilizing e-banking reduces banking errors. Automation of payments, wires or other consistent financial activities ensures
        payments are made on time and may prevent errors caused by keyboard slips or user error.</p>
    </td>
    
    <td class="con" valign="top">
    	<div id="heade3"><h1>Solutions</h1></div>
        <p>Internet banking is easy, safe and convenient. Join our bank and free yourself.</p>
        <p>Stay in controls - keep track of what's going in and coming out or your account at any time. 67% of people say
         banking online helped them avoid overpaying overdraft fees.</p>
        
    </td>
</tr></table>
    
</body>
</html>