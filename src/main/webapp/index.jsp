<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/28/2021
  Time: 12:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  </head>
  <body>
  <%
    ArrayList<Customer> customers = new ArrayList<>();
    customers.add(new Customer(1, "Hoan", "1983", "Ha Noi", ""));
    customers.add(new Customer(2, "Nam", "1980", "Nam Dinh", ""));
    customers.add(new Customer(3, "Hoa", "1990", "Da Nang", ""));
    customers.add(new Customer(4, "Hoa", "1999", "Ha Nam", ""));
    customers.add(new Customer(5, "Thi", "1993", "Thai Binh", ""));
    request.setAttribute("customers", customers);
  %>
    <div class="container">
      <table class="table">
        <h1>Danh sach khach hang</h1>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Tên</th>
          <th scope="col">Ngày sinh</th>
          <th scope="col">Địa chỉ</th>
          <th scope="col">Ảnh</th>
        </tr>
        <c:forEach items="${customers}" var="customer" >
        <tr>
            <th scope="row">${customer.id}</th>
            <td>${customer.name}</td>
            <td>${customer.date}</td>
            <td>${customer.address}</td>
            <td>${customer.img}</td>
        </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
