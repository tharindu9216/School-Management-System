<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <h1> My Profile</h1>
   <c:set var ="cus" value="${customer}"/>
    <fieldset disabled>
             <div class="row">
                 <div class="column">
                     <h3 class="title">Billing Address</h3>
                      <div class="input-box">
                         <span>Email :</span>
                         <input type="text" placeholder="perera@gmail.com" value="${cus.email}" name="email">
                     </div>
                     <div class="input-box">
                          <span>Full Name :</span>
                         <input type="text" placeholder="Perera" value="${cus.full_name}" name="Fname">
                     </div>
                     <div class="input-box">
                         <span>Address :</span>
                         <input type="text" placeholder="Room - Street-Locality" value="${cus.address}" name="add">                     </div>
                     <div class="input-box">
                         <span>City :</span>
                         <input type="text" placeholder="Rathnapura" value="${cus.city}" name="city">
                     </div>
                     <div class="Flex">
                         <div class="input-box">
                             <span>State :</span>
                             <input type="text" placeholder="Sabaragamuwa" value="${cus.state}" name="state">
                         </div>
                     </div>
                     <div class="input-box">
                         <span>Zip Code :</span>
                         <input type="number" placeholder="1234 5678" value="${cus.zip_code}" name="zip">
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
                         <input type="number" placeholder="1111-2222-3333-4444" value="${cus.credit_card_number}" name="credit">
                     </div>
                     <div class="input-box">
                         <span>Exp.Month :</span>
                         <input type="text" placeholder="April" value="${cus.exp_month}" name="expm">
                     </div>
                     <div class="input-box">
                         <span>Cvv :</span>
                         <input type="number" placeholder="123" value="${cus.cvv}" name="cvv">
                     </div><div class="input-box">
                         <span>Amount :</span>
                         <input type="number" placeholder="123" value="${cus.amount}" name="amount">
                     </div>
                 </div>
             </div>
      </fieldset>
    
    <form action="update.jsp" method="post">
    
        <input type="hidden" name ="email" value="${cus.email}">
        <input type="hidden" name ="Fname" value="${cus.full_name}">
        <input type="hidden" name ="add" value="${cus.address}">
        <input type="hidden" name ="city" value="${cus.city}">
        <input type="hidden" name ="state" value="${cus.state}">
        <input type="hidden" name ="zip" value="${cus.zip_code}">
        <input type="hidden" name ="credit" value="${cus.credit_card_number}">
        <input type="hidden" name ="expm" value="${cus.exp_month}">
        <input type="hidden" name ="cvv" value="${cus.cvv}">
        <input type="hidden" name ="amount" value="${cus.amount}">
        
        <input type="submit" value="Update">
    </form>
</body>
</html>