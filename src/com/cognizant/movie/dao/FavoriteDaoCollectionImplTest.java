package com.cognizant.movie.dao;

import java.util.List;
import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao FavoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavorites() {
        System.out.println("Movie added into favorite");
        FavoriteDao.addFavoritesById(1, 2);
        FavoriteDao.addFavoritesById(1, 3);
    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite");
        FavoriteDao.removeFavoritesById(1,3);
    }

    public static void testGetAllFavorites() {
        try {

            System.out.println("Retrieving all the Movies from Favorite");
            List<Movie> list = FavoriteDao.getAllFavorites(1).getFavoriteList();
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println("No of favorites:" + list.size());
        } catch (FavoriteEmptyException e) {
            System.out.println(e);
        }
    }
}
