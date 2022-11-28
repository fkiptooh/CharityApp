function myFunction() {
    let summaryText = document.querySelectorAll(".summary--text");
    let summaryForm = document.querySelectorAll("div.form-section--column li");

    let bags = document.querySelector("div.form-group.form-group--inline input[name='quantity']");
    let street = document.querySelector("div.form-group.form-group--inline input[name='street']");
    let city = document.querySelector("div.form-group.form-group--inline input[name='city']");
    let zipCode = document.querySelector("div.form-group.form-group--inline input[name='zipCode']");
    let pickUpDate = document.querySelector("div.form-group.form-group--inline input[name='pickUpDate']");
    let pickUpTime = document.querySelector("div.form-group.form-group--inline input[name='pickUpTime']");
    let pickUpComment = document.querySelector("div.form-group.form-group--inline textarea[name='pickUpComment']");

    if (bags.value == 1) {
        summaryText[0].innerHTML = bags.value + " bag";
    } else if (bags.value > 1 && bags.value < 5) {
        summaryText[0].innerHTML = bags.value + " bags";
    } else if (bags.value >= 5) {
        summaryText[0].innerHTML = bags.value + " bags";
    } else {
        summaryText[0].innerHTML = "";
    }

    summaryText[1].innerHTML = checked();
    summaryForm[0].innerHTML = street.value;
    summaryForm[1].innerHTML = city.value;
    summaryForm[2].innerHTML = zipCode.value;
    summaryForm[3].innerHTML = pickUpDate.value;
    summaryForm[4].innerHTML = pickUpTime.value;
    summaryForm[5].innerHTML = pickUpComment.value;
}

function checked() {
    let categories = document.querySelectorAll("div.form-group.form-group--checkbox input[name='categories']");
    let descriptions = document.querySelectorAll("div.form-group.form-group--checkbox span.description");
    let categoriesSummary = "";
    for (let i = 0; i < categories.length; i++) {
        if (categories[i].checked == true) {
            categoriesSummary += " " + descriptions[i].innerHTML + ", ";
        }
    }
    return "Gifts: " + categoriesSummary.slice(0, -2);
}