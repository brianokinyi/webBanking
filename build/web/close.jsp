<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Close Account</title>    
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
    <a href="transfer.jsp"></a>
    </form>
    </div>
       </div>
    <hr>
</head>
<div align="center">
    <div id="content1"><h1>Close Your Account</h1></div>
</div>
<div align="center">
<form action="closeaccount.jsp" >
Account No.:
<input name="accno."><br><br>

<input type="submit" value="Submit">

</form>
</div>
</body>
</html>