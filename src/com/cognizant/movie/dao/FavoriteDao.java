package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public interface FavoriteDao {
    public List<Movie> getAllFavorites(long userId) throws FavoriteEmptyException;
    public void addFavoritesById(long userId, long movieId);
    public void removeFavoritesById(long userId, long movieId);

}
