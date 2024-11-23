<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    .row {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }
    .column {
        flex: 1;
        margin: 0 10px;
    }
    .title {
        margin-bottom: 10px;
    }
    .input-box {
        margin-bottom: 10px;
    }
    .input-box span {
        display: block;
        margin-bottom: 5px;
    }
    .Flex {
        display: flex;
        justify-content: space-between;
    }
    .btn {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .form-container {
        display: flex;
        align-items: flex-start;
    }
</style>
</head>
<body>
<form action="updateCustomer" method="post">
    <div class="form-container">
        <div class="column">
            <h3 class="title">Billing Address</h3>
            <div class="input-box">
                <span>Email :</span>
                <input type="text"  name="email"  value="${param.email}">
            </div>
            <div class="input-box">
                <span>Full Name :</span>
                <input type="text"  name="Fname"  value="${param.full_name}">
            </div>
            <div class="input-box">
                <span>Address :</span>
                <input type="text"  name="add" value="${param.address}">
            </div>
            <div class="input-box">
                <span>City :</span>
                <input type="text" name="city" value="${param.city}">
            </div>
            <div class="Flex">
                <div class="input-box">
                    <span>State :</span>
                    <input type="text" name="state" value="${param.state}">
                </div>
            </div>
            <div class="input-box">
                <span>Zip Code :</span>
                <input type="number"  name="zip" value="${param.zip_code}">
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
                <input type="number"  name="credit" value="${param.credit_card_number}">
            </div>
            <div class="input-box">
                <span>Exp.Month :</span>
                <input type="text" name="expm" value="${param.exp_month}">
            </div>
            <div class="input-box">
                <span>Cvv :</span>
                <input type="number" name="cvv" value="${param.cvv}">
            </div>
            <div class="input-box">
                <span>Amount :</span>
                <input type="number"  name="amount" value="${param.amount}">
            </div>
        </div>
    </div>
    <button type="submit" class="btn">Update</button>
</form>
</body>
</html>
