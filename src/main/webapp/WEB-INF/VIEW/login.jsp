<%-- 
    Document   : login
    Created on : Feb 28, 2022, 10:19:25 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="<c:url value="/css/login.css"/>"/>
</head>

<body>
    <div id="page">
        <div class="logo">
            <ion-icon name="logo-react"></ion-icon>
        </div>
        <div class="content">
            <div class="left">
                <div class="title">
                    <h1></h1>
                </div>
                <p>Công nghệ phần mềm - Thiết kế website giống shopee
                </p>
                <button><a class="left__button" href="<c:url value="/"/>">TRỞ LẠI</a></button>
            </div>
            <div class="right">
                <c:url value="/login" var="action" />
                <form action="${action}" method="post">
                    <h1>LOGIN SHOP_LNT</h1>
                    <input type="text" placeholder="Username" id="username" name="username">
                    <input type="password" placeholder="Password" id="password" name="password">
                    <input type="submit" value="LOGIN">
                </form>
            </div>
        </div>
    </div>
    <script src="<c:url value="/js/dangnhap.js"/>"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>