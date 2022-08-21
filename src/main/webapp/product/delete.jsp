<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 21/08/2022
  Time: 1:23 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
    <h1>Delete Product</h1>

    <p>
        <a href="/products">Back to product list</a>
    </p>
    <form action="" method="post">
        h3>Are U sure abao that</h3>
        <fieldset>
            <
            <legend>Product</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td>${product.name}</td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td>${product.price}</td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td>${product.description}</td>
                </tr>
                <tr>
                    <td>Maker: </td>
                    <td>${product.maker}</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Delete Product" name="submit"></td>
                </tr>
            </table>

        </fieldset>
    </form>


</body>
</html>
