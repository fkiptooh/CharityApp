<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Charity App</title>

    <link rel="stylesheet" href="<c:url value="theme/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page">
    <nav class="container container--70">
<%--        <ul class="nav--actions">--%>
<%--            <li><a href="" class="btn btn--small btn--without-border">Zaloguj</a></li>--%>
<%--            <li><a href="#" class="btn btn--small btn--highlighted">Załóż konto</a></li>--%>
<%--        </ul>--%>

        <ul>
            <li><a href="#top" class="btn btn--without-border active">Start</a></li>
            <li><a href="#steps" class="btn btn--without-border">What is it about?</a></li>
            <li><a href="#about-us" class="btn btn--without-border">About us</a></li>
            <li><a href="#help" class="btn btn--without-border">Foundations and organizations</a></li>
            <li><a href="#contact" class="btn btn--without-border">contact</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Start helping!<br/>
                Put unwanted items in trusted hands
            </h1>
        </div>
    </div>
</header>

<section class="stats">
    <div class="container container--85">
        <div class="stats--item">
            <em>${quantityCount}</em>

            <h3>Donated bags</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius est beatae, quod accusamus illum
                tempora!</p>
        </div>

        <div class="stats--item">
            <em>${quantityAll}</em>
            <h3>Donated gifts</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam magnam, sint nihil cupiditate quas
                quam.</p>
        </div>

    </div>
</section>

<section class="steps" id="steps">
    <h2>Just 4 simple steps</h2>

    <div class="steps--container">
        <div class="steps--item">
            <span class="icon icon--hands"></span>
            <h3>Choose things</h3>
            <p>clothes, toys, equipment and more</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--arrow"></span>
            <h3>pack them</h3>
            <p>use garbage bags</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--glasses"></span>
            <h3>Decide who you want to help</h3>
            <p>choose a trusted place</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--courier"></span>
            <h3>Order a courier</h3>
            <p>the courier will arrive at a convenient time</p>
        </div>
    </div>

    <a href="/form" class="btn btn--large">Give gifts</a>
</section>

<section class="about-us" id="about-us">
    <div class="about-us--text">
        <h2>About Us</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas vitae animi rem pariatur incidunt libero
            optio esse quisquam illo omnis.</p>
        <img src="<c:url value="theme/images/signature.svg"/>" class="about-us--text-signature" alt="Signature"/>
    </div>
    <div class="about-us--image"><img src="<c:url value="theme/images/about-us.jpg"/>" alt="People in circle"/>
    </div>
</section>

<section class="help" id="help">
    <h2>Who do we help?</h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>In our database you will find a list of verified foundations with which we cooperate. You can check what they do.</p>

        <ul class="help--slides-items">
            <c:forEach var="institution" items="${institutions}" varStatus="counter">
                <c:if test="${counter.count % 2 == 1}">
                    <li>
                </c:if>
                <div class="col">
                    <div class="title">${institution.name}</div>
                    <div class="subtitle">${institution.description}</div>
                </div>
                <c:if test="${counter.count % 2 == 0 or counter.count == institutions.size()}">
                    </li>
                </c:if>
            </c:forEach>
        </ul>
    </div>
</section>

<%@ include file="footer.jsp" %>

<script src="<c:url value="theme/js/app.js"/>"></script>
</body>
</html>
