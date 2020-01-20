<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorites</title>
<link rel="Shortcut icon" href="images/logo.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
</head>
<body>
    <header> <img src="images\logo.png" />
    <p class="movie-cruiser">Movie Cruiser</p>
    <nav> <a class="movies-header-section" href="ShowMovieListCustomer">Movies</a> <a
        class="favorites-header-section" href="ShowFavorite">Favorites</a> </nav> </header>
    <p class="favourites">Favourites</p>
    <c:if test="${ removeFavoriteStatus==true }">
        <br>
        <br>
        <br>
        <h4 class="for-Message-delete">Movie removed from Favorite successfully</h4>
    </c:if>
    <table class="for-tables-in-movie-list" style="width: 50%">
        <tr>
            <th align="left"><b>Title</b></th>
            <th align="left"><b>Box Office</b></th>
            <th align="left"><b>Genre</b></th>
        </tr>
        <c:forEach items="${Movie}" var="movie">
            <tr>
                <td>${ movie.getTitle()}</td>
                <td>$ ${ movie.getBoxOffice()}</td>
                <td align="left">${movie.getGenre()}</td>
                <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
            </tr>
            <tr>
            </tr>
        </c:forEach>
        <tr>
            <td align="left"><b>No Of Favorites :${favorite.getTotal()}</b></td>
        </tr>
    </table>
    <footer>
    <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>
