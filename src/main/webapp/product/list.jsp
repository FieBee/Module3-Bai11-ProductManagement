<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 20/08/2022
  Time: 11:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <h1>Product</h1>
    <p>
        <a href="/products?action=create">Create new product</a>
    </p>

    <form action="/product/find.jsp" method="get">
        <p>
            <p>Find product by name</p>
            <input type="text" name="name" id = "name">
            <a href="/products?action=find">Search</a>

<%--            <input type="submit" value="Search">--%>
<%--            <button value="">Search</button>--%>
        </p>
    </form>


    <br>

    <table border="1">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Price</td>
            <td>Description</td>
            <td>Maker</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>

        <c:forEach var="product" items="${requestScope['products']}">
            <tr>
                <td>
                    ${product.id}
                </td>
                <td>
                    <a href="/products?action=view&id=${product.getId()}">
                            ${product.name}
                    </a>
                </td>
                <td>
                        ${product.price}
                </td>
                <td>
                        ${product.description}
                </td>
                <td>
                        ${product.maker}
                </td>
                <td>
                    <a href="/products?action=edit&id=${product.getId()}">
                        Edit
                    </a>
                </td>
                <td>
                    <a href="/products?action=delete&id=${product.getId()}">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
