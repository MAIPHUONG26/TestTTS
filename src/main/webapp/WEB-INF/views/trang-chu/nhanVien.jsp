<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <title>Document</title>
</head>
<body>
<p>Hi đây là nhân viên nè</p>
<table class="table">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">ma nv</th>
        <th scope="col">email fpt</th>
        <th scope="col">email FE</th>
        <th scope="col">trang thai</th>
        <th scope="col">hanh dong</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listNhanVien}" var="s" varStatus="i">
        <tr>
            <th scope="row">${i.index+1}</th>
            <td>${s.staff_code}</td>
            <td>${s.account_fpt}</td>
            <td>${s.account_fe}</td>
            <td>${s.status}</td>
            <td>
                <button><a href="/san_pham/delete?id=${sv.id}">Xoa</a></button>
                <button><a href="/san_pham/detail?id=${sv.id}">Chi Tiết</a></button>
            </td>

        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>