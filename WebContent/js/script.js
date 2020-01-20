function validateMovieForm() {
    var title = document.forms["movies"]["title"].value;
    var boxOffice = document.forms["movies"]["boxOffice"].value;
    var dateOfLaunch = document.forms["movies"]["dateOfLaunch"].value;
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
    if (boxOffice == "") {
        alert("Box office is required");
        return false;
    }
    if (!boxOffice.match(regex)) {
        alert("Box office has to be a number");
        return false;
    }
    if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}
