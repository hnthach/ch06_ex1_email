<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Join our email list</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
<div class="container"> <!-- ✅ thêm container -->
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>

    <c:if test="${message != null}">
        <p class="error"><i>${message}</i></p>
    </c:if>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">

        <label>Email:</label>
        <input type="email" name="email" value="${user.email}">

        <label>First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}">

        <label>Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}">

        <input type="submit" value="Join Now" class="btn">
    </form>

    <footer>
        &copy; Copyright ${currentYear} Mike Murach &amp; Associates
    </footer>
</div> <!-- ✅ đóng container -->
</body>
</html>
