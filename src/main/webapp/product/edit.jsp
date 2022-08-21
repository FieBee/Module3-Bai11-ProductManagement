<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 21/08/2022
  Time: 10:52 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
  <h1>Edit Product</h1>
  <p>
    <c:if test="${requestScope['message'] != null}">
      <span class="message">${requestScope['message']}</span>
    </c:if>
  </p>
  <p>
    <a href="/products">Back to product list</a>
  </p>
  <form action="" method="post">
    <fieldset>
      <legend>Edit Product</legend>
      <table>
        <tr>
          <td>Name</td>
          <td>
            <input type="text" name="name" value="${requestScope['product'].getName()}">
          </td>
        </tr>
        <tr>
          <td>Price</td>
          <td>
            <input type="text" name="price" value="${product.price}">
          </td>
        </tr>
        <tr>
          <td>Description</td>
          <td>
            <input type="text" name="description" value="${product.description}">
          </td>
        </tr>
        <tr>
          <td>Maker</td>
          <td>
            <input type="text" name="maker" value="${product.maker}">
          </td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Update Product"></td>
        </tr>
      </table>
    </fieldset>

  </form>
</body>
</html>
