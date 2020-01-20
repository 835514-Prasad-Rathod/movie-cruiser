package com.cognizant.movie.model;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Movie {
    private long movieId;
    private String title;
    private long boxOffice;
    private boolean active;
    private Date dateOfLaunch;
    private String genre;
    private boolean hasTeaser;

    public Movie() {

    }

    public Movie(long movieId, String title, long boxOffice, boolean active, Date dateOfLaunch,
            String genre, boolean hasTeaser) {
        super();
        this.movieId = movieId;
        this.title = title;
        this.boxOffice = boxOffice;
        this.active = active;
        this.dateOfLaunch = dateOfLaunch;
        this.genre = genre;
        this.hasTeaser = hasTeaser;
    }

    public long getMovieId() {
        return movieId;
    }

    public void setMovieId(long movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getBoxOffice() {
        return boxOffice;
    }

    public void setBoxOffice(long boxOffice) {
        this.boxOffice = boxOffice;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getDateOfLaunch() {
        return dateOfLaunch;
    }

    public void setDateOfLaunch(Date dateOfLaunch) {
        this.dateOfLaunch = dateOfLaunch;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public boolean isHasTeaser() {
        return hasTeaser;
    }

    public void setHasTeaser(boolean hasTeaser) {
        this.hasTeaser = hasTeaser;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + (active ? 1231 : 1237);
        result = prime * result + (int) (boxOffice ^ (boxOffice >>> 32));
        result = prime * result + ((dateOfLaunch == null) ? 0 : dateOfLaunch.hashCode());
        result = prime * result + ((genre == null) ? 0 : genre.hashCode());
        result = prime * result + (hasTeaser ? 1231 : 1237);
        result = prime * result + (int) (movieId ^ (movieId >>> 32));
        result = prime * result + ((title == null) ? 0 : title.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Movie other = (Movie) obj;
        if (active != other.active)
            return false;
        if (boxOffice != other.boxOffice)
            return false;
        if (dateOfLaunch == null) {
            if (other.dateOfLaunch != null)
                return false;
        } else if (!dateOfLaunch.equals(other.dateOfLaunch))
            return false;
        if (genre == null) {
            if (other.genre != null)
                return false;
        } else if (!genre.equals(other.genre))
            return false;
        if (hasTeaser != other.hasTeaser)
            return false;
        if (movieId != other.movieId)
            return false;
        if (title == null) {
            if (other.title != null)
                return false;
        } else if (!title.equals(other.title))
            return false;
        return true;
    }

    @Override
    public String toString() {
        DecimalFormat df = new DecimalFormat();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

        return String.format("%-10s%-20s%-20s%-15s%-17s%-25s%-30s\n", movieId, title,
                "$" + df.format(boxOffice), active == true ? "Yes" : "No", sdf.format(dateOfLaunch),
                genre, hasTeaser == true ? "Yes" : "No");

    }
}
