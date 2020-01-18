<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie List Admin</title>
<link rel="Shortcut icon" href="images/logo.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
</head>
<body>
    <header>
        <img src="images\logo.png" />
        <p class="movie-cruiser">Movie Cruiser</p>
        <nav>
            <a class="movies-header-section" href="ShowMovieListAdmin">Movies</a>
        </nav>
    </header>
    <p class="movies-in-lable-table">Movies</p>
    <table class="for-tables-in-movie-list" style="width: 50%">
        <tr>
            <th align="left"><b>Title</b></th>
            <th align="left"><b>Box Office</b></th>
            <th align="left"><b>Active</b></th>
            <th align="left"><b>Date of Launch</b></th>
            <th align="left"><b>Genre</b></th>
            <th align="left"><b>Has teaser</b></th>
            <th align="left"><b>Action</b></th>
        </tr>
        <c:forEach items="${movie}" var="movie">

            <tr>
                <td class="headers-row">${movie.getTitle()}</td>
                <td class="second-row">${movie.getBoxOffice()}</td>
                <td><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td><f:formatDate value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy" /></td>
                <td>${movie.getGenre()}</td>
                <td><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td><a href="ShowEditMovie?movieId=${movieId.getId()}">Edit</a></td>
            </tr>
</c:forEach>
    </table>
    <footer>
        <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>
