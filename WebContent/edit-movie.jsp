<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>EditMovie</title>
<link rel="Shortcut icon" href="images/logo.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
<script type="text/javascript" src="js/script.js"></script>

</head>
<body>

    <header> <img src="images\logo.png" />
    <p class="movie-cruiser">Movie Cruiser</p>
    <nav> <a class="movies-header-section" href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <form action="EditMovie" name="movies" method="post" onsubmit="return validateMovieForm()">
        <input type="hidden" name="movieId" value="${movie.getMovieId()}">
        <p class="movies-in-lable-table">Edit Movie</p>

        <table class="for-tables-in-movie-list">
            <c:set var="movie" value="${movie}">
            </c:set>
            <tr>
                <td><label for="title"><b>Title</b></label></td>
            </tr>
            <tr>
                <td colspan=13><input type="text" name="title" size="120"
                    value="${movie.getTitle()}" id="title" placeholder="Avengers - End Game"><span
                    id="name"></span></td>
            </tr>
            <tr>
                <td height="15px"></td>
            </tr>
            <tr>
                <td><label for="Gross($)"><b>Gross ($)</b></label></td>
                <td><label><b>Active</b></label></td>
                <td><label><b>Date of Launch</b></label></td>
                <td><label><b>Genre</b></label></td>
            </tr>
            <tr>
                <td><input id="boxOffice" type="text" name="boxOffice"
                    value="${movie.getBoxOffice()}" autofocus autocomplete="off" spellcheck="false"
                    placeholder="97"></td>
                <td><c:choose>
                        <c:when test="${movie.isActive()==true }">
                            <input type="radio" value="Yes" name="active" checked="checked" />Yes
                <input type="radio" value="No" name="active" />No
                </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                <input type="radio" value="No" name="active" checked="checked" />No</c:otherwise>
                    </c:choose></td>


                <f:formatDate value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input id="dateOfLaunch" type="text" name="dateOfLaunch"
                    value="${dateOfLaunch }" autofocus size=20 autocomplete="off"
                    placeholder="27/04/2022" spellcheck="false"></td>

                <td><select name="genre">
                        <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                        <option>Science Fiction</option>
                        <option>SuperHero</option>
                        <option>Romance</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${movie.isHasTeaser()==true }">

                            <input type="checkbox" name="hasTeaser" value="Yes" checked="checked" />
                            <b>Has Teaser</b>
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="hasTeaser" value="No">
                            <b>Has Teaser</b>
                        </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td><input type="submit" class="save-Button" value="Save" name="submit"
                    id="submit"></td>
            </tr>
        </table>
    </form>
    <footer>
    <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>