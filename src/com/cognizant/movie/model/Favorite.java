package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;
    private int total;

    public Favorite() {

    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total2) {
        this.total = total2;
    }

    @Override
    public String toString() {
        return "Favorite [favoriteList=" + favoriteList + ", total=" + total + "]";
    }
}
