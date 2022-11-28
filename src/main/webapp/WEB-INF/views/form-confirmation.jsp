<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="theme/css/style.css" />
</head>
<body>
<header class="header--form-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li class="logged-user">
                Hello Angela
                <ul class="dropdown">
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">My rebounds</a></li>
                    <li><a href="#">Log out</a></li>
                </ul>
            </li>
        </ul>

        <ul>
            <li><a href="index.html" class="btn btn--without-border active">Start</a></li>
            <li><a href="index.html#steps" class="btn btn--without-border">What is it about?</a></li>
            <li><a href="index.html#about-us" class="btn btn--without-border">About Us</a></li>
            <li><a href="index.html#help" class="btn btn--without-border">Foundations and organizations</a></li>
            <li><a href="index.html#contact" class="btn btn--without-border">contact</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <h2>
            Thank you for submitting the form. We will send you all information about the collection by e-mail.
        </h2>
    </div>
</header>

<%@ include file="footer.jsp" %>

<script src="theme/js/app.js"></script>
</body>
</html>
