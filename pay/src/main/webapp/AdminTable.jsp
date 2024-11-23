<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  /* CSS code for styling the table */

  /* Style the table */
  .table {
    width: 100%;
    border-collapse: collapse;
    font-family: Arial, sans-serif;
  }

  /* Style table header */
  .table th {
    background-color: #f2f2f2;
    border: 1px solid #dddddd;
    padding: 8px;
    text-align: left;
  }

  /* Style table cells */
  .table td {
    border: 1px solid #dddddd;
    padding: 8px;
  }

  /* Style alternate rows */
  .table tbody tr:nth-child(even) {
    background-color: #f2f2f2;
  }
</style>
</head>
<body>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Full Name</th>
      <th scope="col">Address</th>
      <th scope="col">State</th>
      <th scope="col">Zip Code</th>
      <th scope="col">Payment</th>
      <th scope="col">Card Accepted </th>
      <th scope="col">Credit Card Number</th>
      <th scope="col">Exp.Month</th>
      <th scope="col">Cvv</th>
      <th scope="col">Amount</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="cus" items="${customer}">
  
      <tr>
         <td>${cus.email}</td>
         <td>${cus.full_name}</td>
         <td>${cus.address}</td>
         <td>${cus.city}</td>
         <td>${cus.state}</td>
         <td>${cus.zip_code}</td>
         <td>${cus.credit_card_number}</td>
         <td>${cus.exp_month}</td>
         <td>${cus.cvv}</td>
         <td>${cus.amount}</td>
          <td>
                   <form action="singleDataButton" method="post">
                       <input type="hidden" name="email" value="${cus.email}">
                       <button type="submit">data</button>
                   </form>
               </td>
               <td>
                <form action="deleteCustomer" method="post">
                       <input type="hidden" name="email" value="${cus.email}">
                       <button type="submit">Delete</button>
                
                </form>
               </td>
      
     </tr>
  
   </c:forEach>
    
  </tbody>
</table>
</body>
</html>
