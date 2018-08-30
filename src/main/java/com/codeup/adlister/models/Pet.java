package com.codeup.adlister.models;

public class Pet {
    private long id;
    private long userId;
    private String title;
    private String user;
    private String description;

    public Pet(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Pet(long userId, String user, String title, String description) {
        this.userId = userId;
        this.title = title;
// Jillian added "this.user = user;"
        this.user = user;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }


    public void setUserId(long userId) {
        this.userId = userId;
    }

// Jillian added lines 43-45
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
