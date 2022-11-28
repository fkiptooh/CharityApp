<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer>
    <div id="contact" class="contact">
        <h2>contact us</h2>
        <h3>Contact form</h3>
        <form class="form--contact">
            <div class="form-group form-group--50">
                <input type="text" name="name" placeholder="Name"/>
            </div>
            <div class="form-group form-group--50">
                <input type="text" name="surname" placeholder="Last name"/>
            </div>

            <div class="form-group">
                <textarea name="message" placeholder="Message" rows="1"></textarea>
            </div>

            <button class="btn" type="submit">Send</button>
        </form>
    </div>
    <div class="bottom-line">
        <span class="bottom-line--copy">Copyright &copy; charity-app-angela 2022</span>
        <div class="bottom-line--icons">
            <a href="#" class="btn btn--small"><img src="<c:url value="theme/images/icon-facebook.svg"/>"/></a>
            <a href="#" class="btn btn--small"><img src="<c:url value="theme/images/icon-instagram.svg"/>"/></a>
        </div>
    </div>
</footer>
