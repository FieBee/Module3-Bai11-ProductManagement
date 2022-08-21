<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 20/08/2022
  Time: 11:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>`
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create new product</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
    <h1>Creat Product</h1>
    <p>
        <c:if test="${requestScope['message']!= null}">
            <span class="message">${requestScope['message']}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>


    <form action="" method="post">
        <fieldset>
            <legend>Product</legend>
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name = "name" id="name"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td> <input type="text" name = "price" id="price"></td>

                </tr>
                <tr>
                    <td>Description</td>
                    <td> <input type="text" name = "description" id="description"></td>

                </tr>
                <tr>
                    <td>Maker</td>
                    <td><input type="text" name = "maker" id="maker"></td>

                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Create Product">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>

</body>
</html>
