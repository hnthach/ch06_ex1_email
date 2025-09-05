<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
<div class="container">
    <h1>🎉 Thanks for joining our email list!</h1>
    <p>Here is the information that you entered:</p>

    <div class="info">
        <p><label>Email:</label> ${user.email}</p>
        <p><label>First Name:</label> ${user.firstName}</p>
        <p><label>Last Name:</label> ${user.lastName}</p>
    </div>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return" class="btn">
    </form>

    <footer>
        &copy; Copyright ${currentYear} Mike Murach &amp; Associates
    </footer>
</div>
</body>
</html>
