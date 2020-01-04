function valid() {
    var title = document.forms["movies"]["title"].value;
    var gross = document.forms["movies"]["gross"].value;
    var date = document.forms["movies"]["dateofLaunch"].value;
    var genre = document.forms["movies"]["genre"].value;
    var regex = (/^.*[0-9].*$/);

    if (title == "") {
        alert("Title is required");
        return false;
    }
    if (title.length < 2 || title.length > 65) {
        alert("Title should have 2 to 100 characters");
        return false;
    }
    if (gross == "") {
        alert("Box office is required");
        return false;
    }
    if (!gross.match(regex)) {
        alert("Box office has to be a number");
        return false;
    }
    if (date == "") {
        alert("Date of Launch is required");
        return false;
    }
    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}
