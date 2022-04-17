<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/15/2022
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
  <h1>Calculator</h1>
  <form id="operator" action="/result" method="post">
    <input type="number" name="firstNumber" value="firstNumber">
    <input type="number" name="secondNumber" value="secondNumber">
    <br>
    <button type="submit" name="operator" value="addition" onclick="document.getElementById('operator')">Addition(+)</button>
    <button type="submit" name="operator" value="subtraction" onclick="document.getElementById('operator')">Subtraction(-)</button>
    <button type="submit" name="operator" value="multiplication" onclick="document.getElementById('operator')">Multiplication(x)</button>
    <button type="submit" name="operator" value="division" onclick="document.getElementById('operator')">Division(/)</button>
    <br>
    <h1>Result: ${result}</h1>
  </form>

  </body>
</html>
