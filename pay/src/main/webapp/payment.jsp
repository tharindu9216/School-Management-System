<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--  <title>Responsive Payment Gateway Form Design using HTML and CSS | Codehal</title>-->
    <style>
       * {
           margin: 0;
           padding: 0;
           box-sizing: border-box;
           font-family: 'Poppins', sans-serif;
       }

       .container {
           display: flex;
           justify-content: center;
           align-items: center;
           min-height: 100vh;
           background: #1f242d;
       }

       .container form {
          width: 700px;
          background: #fff;
          border-radius: 10px;
          padding: 25px;
       }

       form .row {
         display: flex;
         gap: 15px;
         flex-wrap: wrap;
       }
       
       .row .column {
         flex: 1 1 250px;
       }

       .column .title {
         font-size: 20px;
         color: #333;
         text-transform: uppercase;
         margin-bottom: 5px;
       }

       .column .input-box {
         margin: 15px 0;
       }

       .input-box span {
         display: block;
         margin-bottom: 10px;
       }

       .input-box input {
         width: 100%;
         padding: 10px 15px;
         border: 1px solid #ccc;
         border-radius: 6px;
         font-size: 15px;
       }

       .column .Flex {
         display: flex;
         gap: 15px;
       }

       .Flex .input-box {
         margin-top: 5px;
       }

       .input-box img {
         height: 34px;
         margin-top: 5px;
         filter: drop-shadow(0 0 1px #000);
       }

       form .btn {
        width: 100%;
        padding: 12px;
        background: #8175d3;
        border: none;
        outline: none;
        border-radius: 6px;
        font-size: 17px;
        color: #fff;
        margin-top: 5px;
        cursor: pointer;
        transition: .5s;
       }

       form .btn:hover {
         background: #6a5acd;
       }
       @charset "UTF-8";

body{
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	display : flex;
	margin: 0; 
    padding: 0; 
     
    flex-direction: column; 
    min-height: 100vh; 
    background-size: cover; 
     background: #e8e4e4;
     
}
*{
	box-sizing: border-box; 
	
    margin: 0; 
    padding: 0; 
    font-family: "Poppins", sans-serif; 
    scroll-behavior: smooth;
    
}
header , footer {
	position: relative;
	background-color:rgba(9, 52, 58, 0.74);
	width: 400%;
	color: white;
}
header {
	
	height: 10vh;
	display: flex;
	
	width: 100%; 
    background: #125a8a; 
    height: 165px; 
    filter: brightness(0.7);
}
header h1{

	margin-top: 15px;
	margin-right: -20%;
	color: #fed101;
    margin-left :3%;
    margin-top: 25px;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-size : 50px;
    }



.nav{
	width: 100%;
	display: flex; 
    justify-content: center; 
    align-items: baseline; 
    font-size: 1.5rem; 
    position: relative; 
    top: 40px; 
    margin-left: 30px;
}
.nav a{
	
	color: white;
	
	position: relative;
	text-decoration: none;
	left: 190px;
	width: 150px;
	
    display: flex; 
    align-items: baseline; 
    justify-content: center; 
    
    height: 100%; 
    transition: all 0.3s ease; 
    letter-spacing: 0.1em; 
    font-weight: 600; 
    margin-right: 17px;
    
    }

.nav a:hover {
    color: #fff; 
    transform: scale(1.1); 
}

.search {
    display: flex; 
    align-items: center; 
    justify-content: end; 
    margin: auto; 
    padding: 2px; 
    border: 1px solid #ccc; 
    border-radius: 50px; 
    background-color: #fff; 
    overflow: hidden; 
    z-index: 999; 
    margin-top: 105px;
    position: relative;
    right: 40%;
    width: 550px; 
    
}


.search input[type="text"] {
    flex-grow: 1; 
    border: none; 
    outline: none; 
    padding: 5px; 
    font-size: 16px; 
    z-index: 999; 
    
    }


.search button[type="submit"] {
    background-color: #9eb2be; 
    color: #fff;  
    border: none;  
    padding: 8px 18px;  
    border-radius: 50px;  
    cursor: pointer;  
    overflow: hidden;  
    z-index: 999;  
    transition: all 0.3s ease;  
}

 
.search button[type="submit"]:hover {
    background-color: #35617a;  
}

 
.user-buttons {
    top: 125px;  
    right: 5px;  
    font-family: "Poppins", sans-serif;  
}

.signout-button {
    background-color: #9fb3df; 
    color: #fff;
    border: none; 
    padding: 8px 12px; 
    border-radius: 50px;  
    cursor: pointer;  
    margin: 5px 10px;  
    text-align: center;  
    text-decoration: none;  
    font-size: 16px;  
    font-family: "Poppins", sans-serif; 
    transition: background-color 0.3s ease, transform 0.3s ease;  
    overflow: hidden;  
    z-index: 1509;  
    margin-left: 15%;
    position:absolute;
    margin-top: 115px;
     box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); 
    
}

.signout-button:hover {
    background-color: #3c718d;  
    transform: scale(1.1); 
    box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.2); 
}

.profile
{
    display: flex;
    flex-direction: row;
}

.profile img
{
        display: flex; 
        position: absolute; 
        height: 130px; 
        width: 130px; 
        top: -10px; 
        right: -33px; 
        margin-left: 10px;
        margin-right: 100px;
}

.profile img:hover{
	transform: scale(1.08); 
	 
	box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.2); 
}

.profile a
{
    margin-right: 5px;

}
 

footer{
	bottom: 0; 
    left: 0; 
    width: 100%; 
    background:#125a8a; 
    height: 110px; 
    filter: brightness(0.7);
}

footer hr{
	border: 2px solid #fed101;
}



footer h2{
	color:  white;
	position: relative;
	left: 40px;
	top: 10px;
	width: 300px;
}
#dv{
	width: 300px;
	color:  white;
	position: relative;
	left: 40px;
	top: 12px;
	padding: 3px;
}
#dv a {
	color: white;
	position: relative;
	top: 5px;
}
.lble{
	position: relative;
	left: 10px;
}

.Address{
	margin-left: 1225px;
	color: #fff;
    font-size: 15px;
    letter-spacing: 0.09em;
    margin-top: -65px;
    padding: 3px;
    position: relative;
}

#social{
	margin-top:-40px;
	margin-left: 550px;
}

#social img{
	width: 30px; 
    height: 30px; 
    margin: 0 10px; 
    transition: filter 0.5s ease; 
    margin-left: 30px; 
    transition: all 0.3s ease;
}

#social img:hover{
	 filter: none; 
    transform: scale(1.4);
}
    </style>
</head>
<body>
<header>
		<h1>Queens College</h1>
		
		<div class="nav">
		
		<a href =" " >Home</a>
		<a href =" " >Payment</a>
		<a href =" " >Dashboard</a>
		<a href =" " >Academics</a>
		<a href =" " >Events</a>
		<a href =" " >Club and Society </a>
		
		
		</div>
		
		
	    <div class="user-buttons">

           <a href="Home.jsp"><button class="signout-button">Log Out</button></a>
        </div>
        
        <div class="search">
           <input type="text" placeholder="Search...">
           <button type="submit">Search</button>
        </div>
        
    <div class ="profile">
        <a href="#        "><img id="user" src="img/userprofile.png"></a>
    </div>
    
  </header>
    <div class="container">
         <form action="addCustomer" method="post">
             <div class="row">
                 <div class="column">
                     <h3 class="title">Billing Address</h3>
                      <div class="input-box">
                         <span>Email :</span>
                         <input type="text" placeholder="perera@gmail.com" name="email">
                     </div>
                     <div class="input-box">
                          <span>Full Name :</span>
                         <input type="text" placeholder="Perera" name="Fname">
                     </div>
                     <div class="input-box">
                         <span>Address :</span>
                         <input type="text" placeholder="Room - Street-Locality" name="add">
                     </div>
                     <div class="input-box">
                         <span>City :</span>
                         <input type="text" placeholder="Rathnapura" name="city">
                     </div>
                     <div class="Flex">
                         <div class="input-box">
                             <span>State :</span>
                             <input type="text" placeholder="Sabaragamuwa" name="state">
                         </div>
                     </div>
                     <div class="input-box">
                         <span>Zip Code :</span>
                         <input type="number" placeholder="1234 5678" name="zip">
                     </div>
                 </div>
                 <div class="column">
                     <h3 class="title">Payment</h3>
                     <div class="input-box">
                         <span>Card Accepted :</span>
                         <img src="payment.png.webp" alt="" name="ca">
                     </div>
                     <div class="input-box">
                         <span>Credit Card Number :</span>
                         <input type="number" placeholder="1111-2222-3333-4444" name="credit">
                     </div>
                     <div class="input-box">
                         <span>Exp.Month :</span>
                         <input type="text" placeholder="April" name="expm">
                     </div>
                     <div class="input-box">
                         <span>Cvv :</span>
                         <input type="number" placeholder="123" name="cvv">
                     </div><div class="input-box">
                         <span>Amount :</span>
                         <input type="number" placeholder="123" name="amount">
                     </div>
                 </div>
             </div>
             <button type="submit" class="btn">Submit</button>
         </form>
    </div>
    
  <footer>
  
  <hr>
	
	<h2>Contact Us</h2>
	<div id="dv">
		
			<Label>0785429632</Label>
			<label class="lble">  0785429632</label><br>
			<label><a href="QueensCollege@gmail.com">QueensCollege@gmail.com</a></label>
			
			
	
	</div>
	
	<div class = "Address">
	
	  <p>Queens College<br>
	  Gregory's Road,<br>
	   Colombo 7.
	  </p>
	
	</div>
	
	<div id = "social">
	    <img src="img/fb.png" alt=""> 
        <img src="img/instra.png" alt=""> 
        <img src="img/twitter.png" alt=""> 
        <img src="img/youtube.png" alt="">
	</div>
		
		
		
	</footer><hr>
</body>
</html>
