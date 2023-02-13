<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="https://topjava.javawebinar.ru/functions" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<style>
    table {
        border: 1px solid black;
        border-collapse: collapse;
        font-weight: 700;
    }
    td, th {
        border: 1px solid black;
        padding: 5px;
    }
    tr.green {
        color: darkgreen;
    }
    tr.red {
        color: crimson;
    }
</style>
<body>
<h3><a href="index.html">Home</a></h3>
<h3><a href="users">Users</a></h3>
<hr>
    <h2>Meals Table</h2>
    <table>
        <tr>
            <th>Description</th>
            <th>Calories</th>
            <th>Date</th>
            <th>Time</th>
        </tr>
        <c:forEach var="meal" items="${requestScope.meals}">
            <c:if test="${meal.excess}">
                <tr class="green">
            </c:if>
            <c:if test="${!meal.excess}">
                <tr class="red">
            </c:if>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
                <td>${f:formatLocalDate(meal.dateTime)}</td>
                <td>${f:formatLocalTime(meal.dateTime)}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>