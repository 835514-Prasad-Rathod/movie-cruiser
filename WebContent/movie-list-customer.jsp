<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MovieListCustomer</title>
<link rel="stylesheet" type="text/css" href="styles\style.css">
<link rel="Shortcut icon" href="images/logo.png">
</head>
<body>
    <header> <img src="images\logo.png" />
    <p class="movie-cruiser">Movie Cruiser</p>
    <nav> <a class="movies-header-section" href="">Movies</a> <a
        class="favorites-header-section" href="favorites.html">Favorites</a> </nav> </header>
    <p class="movies-in-lable-table">Movies</p>
    <table class="for-tables-in-movie-list" style="width: 50%" cellspacing="4">
        <tr>
            <th align="left"><b>Title</b></th>
            <th class="right"><b>Box Office</b></th>
            <th class="center"><b>Genre</b></th>
            <th align="center"><b>Has teaser</b></th>
            <th class="center"><b>Action</b></th>
        </tr>
        <c:forEach items="${Movie}" var="movie">
            <tr>
                <td class="headers-row">${movie.getTitle()}</td>
                <td><c:choose>
                        <c:when test="${movie.isHasTeaser() =='true' }">yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="second-row">${movie.getBoxOffice()}</td>
                <td>${menuItem.getGenre()}</td>
                <td><a href="AddToFavorite?movieId=${movie.getId()}">Add to Favorite</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>
