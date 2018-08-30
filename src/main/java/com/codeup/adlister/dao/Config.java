package com.codeup.adlister.dao;

public class Config {
    private String url = "jdbc:mysql://localhost/petlister_db?serverTimezone=UTC&useSSL=false";
    private String user = "pet_admin";
    private String password = "password";


    public String getUrl(){
        return url;
    }
    public String getUsername(){
        return user;
    }
    public String getPassword(){
        return password;
    }

}
