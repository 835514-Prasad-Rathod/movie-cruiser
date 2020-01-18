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
    <header>
        <img src="images\logo.png" />
        <p class="movie-cruiser">Movie Cruiser</p>
        <nav>
            <a class="movies-header-section" href="movie-list-admin.html">Movies</a>
        </nav>
    </header>
    <form action="edit-movie-status.html" name="movies" method="post" onsubmit="return valid()">
        <p class="movies-in-lable-table">Edit Movie</p>
        <table class="for-tables-in-movie-list">
            <tr>
                <td><label for="title"><b>Title</b></label></td>
            </tr>
            <tr>
                <td colspan=13><input type="text" name="title" size="120" id="title"
                    placeholder="Avengers - End Game"><span id="name"></span></td>
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
                <td><input type="text" name="gross" size="9" id="gross"
                    placeholder="2,787,965,087"></td>
                <td><label for="Yes">Yes</label> <input type="radio" name="Active" value="Yes"
                    id="Yes" /> &nbsp;<label for="No"> No</label> <input type="radio" name="Active"
                    value="No" id="No" /></td>
                <td><input type="text" name="dateofLaunch" id="dateofLaunch"
                    placeholder="27/04/2022"></td>
                <td><select name="genre">
                        <option></option>
                        <option value="SciFi">Science Fiction</option>
                        <option value="SprHr">Superhero</option>
                        <option value="Romnc">Romance</option>
                        <option value="Cmdy">comedy</option>
                        <option value="Actn">Action</option>
                        <option value="Thrlr">Thriller</option>
                </select></td>
            </tr>
            <tr>
                <td height="14px"></td>
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox" value="Teaser" name="Teaser"
                    class="checkbox" />Has Teaser</td>
            </tr>
            <tr>
                <td height="15px"></td>
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
