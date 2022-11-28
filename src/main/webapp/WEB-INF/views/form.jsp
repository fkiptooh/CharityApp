<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Charity App</title>
    <link rel="stylesheet" href="theme/css/style.css"/>
</head>
<body>
<header class="header--form-page">
    <nav class="container container--70">
        <%--        <ul class="nav--actions">--%>
        <%--            <li class="logged-user">--%>
        <%--                Witaj Agata--%>
        <%--                <ul class="dropdown">--%>
        <%--                    <li><a href="#">Profil</a></li>--%>
        <%--                    <li><a href="#">Moje zbiórki</a></li>--%>
        <%--                    <li><a href="#">Wyloguj</a></li>--%>
        <%--                </ul>--%>
        <%--            </li>--%>
        <%--        </ul>--%>

        <ul>
            <li><a href="/" class="btn btn--without-border active">Start</a></li>
            <li><a href="/#steps" class="btn btn--without-border">What is it about?</a></li>
            <li><a href="/#about-us" class="btn btn--without-border">About us</a></li>
            <li><a href="/#help" class="btn btn--without-border">Foundations and organizations</a></li>
            <li><a href="/#contact" class="btn btn--without-border">contact</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Give away the things you no longer want<br/>
                <span class="uppercase">those in need</span>
            </h1>

            <div class="slogan--steps">
                <div class="slogan--steps-title">Just 4 simple steps:</div>
                <ul class="slogan--steps-boxes">
                    <li>
                        <div><em>1</em><span>Choose things</span></div>
                    </li>
                    <li>
                        <div><em>2</em><span>Pack them in bags</span></div>
                    </li>
                    <li>
                        <div><em>3</em><span>Choose a foundation</span></div>
                    </li>
                    <li>
                        <div><em>4</em><span>Order a courier</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Important!</h3>
            <p data-step="1" class="active">
                Complete the details of your r to know to whom it is best to pass them on.
            </p>
            <p data-step="2">
                Fill in the details of your belongings. Thanks to this, we will know to whom it is best to give them.
            </p>
            <p data-step="3">
                Choose one to which your shipment will go.
            </p>
            <p data-step="4">Enter the address and pick-up date.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter">Step <span>1</span>/4</div>
            <form:form method="post" modelAttribute="donation">
<%--                <div><center><form:errors path="street"/></center></div>--%>
            <%--        <form action="form-confirmation.html" method="post">--%>
            <%--        <!-- STEP 1: class .active is switching steps -->--%>
            <div data-step="1" class="active">
                <h3>Select what you want to give back:</h3>

                <c:forEach var="category" items="${categoryList}">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <input
                                    type="checkbox"
                                    name="categories"
                                    value="${category.id}"
                            />
                            <span class="checkbox"></span>
                            <span class="description"
                            >${category.name}</span>
                        </label>
                    </div>
                </c:forEach>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>

            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Enter the number of 60l bags in which you packed your items:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Number of 60l bags:
                        <input type="number" name="quantity" step="1" min="1"/>
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Back</button>
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>


            <!-- STEP 4 -->
            <div data-step="3">
                <h3>Select the organization you want to help:</h3>

                <c:forEach var="inst" items="${institutions}">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <input type="radio" name="institution" value="${inst.id}"/>
                            <span class="checkbox radio"></span>
                            <span class="description">
                                <div class="title">${inst.name}</div>
                                <div class="subtitle">
                                        ${inst.description}
                                </div>
                            </span>
                        </label>
                    </div>
                </c:forEach>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Back</button>
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="4">
                <h3>Enter the address and date of receipt of the item by the courier:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Pickup Address</h4>
                        <div class="form-group form-group--inline">
                            <label>
                                Street <input type="text" name="street"/>
                            </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> City <input type="text" name="city"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                ZIP code <input type="text" name="zipCode"/>
                            </label>
                        </div>

                    </div>

                    <div class="form-section--column">
                        <h4>Date of receipt</h4>
                        <div class="form-group form-group--inline">
                            <label> Data <input type="date" name="pickUpDate"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Hour <input type="time" name="pickUpTime"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Notes for the courier
                                <textarea name="pickUpComment" rows="5"></textarea>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Back</button>
                    <button onclick="myFunction()" type="button" class="btn next-step">Next</button>
                </div>
            </div>

            <!-- STEP 6 -->

            <div data-step="5">
                <h3>Summary of your donation</h3>

                <div class="summary">
                    <div class="form-section">
                        <h4>you give:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text">
                                    4 bags of children's clothes in good condition
                                </span>
                            </li>
                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text">
                                    For the "I have a dream" foundation in Nairobi
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Pickup Address:</h4>
                            <ul>
                                <li>Nairobi 51</li>
                                <li>Kenya</li>
                                <li>99-098</li>

                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Date of receipt:</h4>
                            <ul>
                                <li>13/12/2018</li>
                                <li>15:40</li>
                                <li>No comments</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Back</button>
                    <button type="submit" class="btn">I confirm</button>
                </div>
            </div>
        </form:form>
        <%--        </form>--%>
    </div>
</section>

<%@ include file="footer.jsp" %>

<script src="theme/js/app.js"></script>
<script src="theme/js/my_app.js"></script>
</body>
</html>

