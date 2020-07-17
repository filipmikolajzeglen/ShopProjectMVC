<%--
  Created by IntelliJ IDEA.
  User: Kratos
  Date: 17.07.2020
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="pl.shopproject.model.CartItem"%>
<%@ page import="java.util.List"%>
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet prefetch" href="main.css">
    <link href="https://fonts.googleapis.com/css2?family=Cuprum&amp;display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Podsumowanie zakupu</title>
</head>
<body>

<div class="borderStyle">
    <div class="tabHeader">
        <h1>Podsumowanie zakupów</h1>
    </div>

    <div class="tabContent">

<h2>Lista zakupów:</h2>

<ol>
    <%
        List<CartItem> cart = (List<CartItem>)request.getAttribute("cart");
        for(CartItem item: cart) {
    %><br/>
    <li>
        <%=
        String.format("<strong>%s</strong>,<br/> Cena oryginalna: %.2f<br/> Cena po rabacie: %.2f",
                item.getProduct(), item.getOriginalPrice(), item.getDiscountPrice())
        %>
    </li>
    <%
        }
    %>
</ol>
<h2>Suma przed rabatem: <%= request.getAttribute("originalSum") %> PLN</h2>
<h2>Suma po rabacie: <%= request.getAttribute("discountSum") %> PLN</h2>
    </div>
</div>
<div class="foot">project by Filip Żegleń</div>
</body>
</html>