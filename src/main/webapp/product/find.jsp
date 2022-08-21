<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 21/08/2022
  Time: 3:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find Product</title>
</head>
<body>
    <h1>Find Product By Name</h1>
    <a href="/products">Back to product list</a>

    <form action="" method="post">
        <fieldset>
            <legend>Product</legend>
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        ${product.name}
                    </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td>
                        ${product.price}
                    </td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        ${product.description}
                    </td>
                </tr>
                <tr>
                    <td>Maker</td>
                    <td>
                        ${product.maker}
                    </td>
                </tr>
            </table>
        </fieldset>

    </form>

</body>
</html>
