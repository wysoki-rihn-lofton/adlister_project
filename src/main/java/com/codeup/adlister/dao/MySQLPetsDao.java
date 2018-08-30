package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Pet;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLPetsDao implements Pets {
    private Connection connection;

    public MySQLPetsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


//    public Pet findByUser(String pet) {
//        String query = "SELECT * FROM pets WHERE pet = ? LIMIT 1";
//        try {
//            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.setString(1, pet);
//            return extractUser(stmt.executeQuery());
//        } catch (SQLException e) {
//            throw new RuntimeException("Error finding pet", e);
//        }
//    }

    public List<Pet> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM pets");
            ResultSet rs = stmt.executeQuery();
            return createPetsFromResults(rs);
        }catch (SQLException e){
            throw new RuntimeException("Check adding method", e);
        }
    }


//    private List<Pet> all(ResultSet rs) throws SQLException {
//        List<Pet> pets = new ArrayList<>();
//        while (rs.next()) {
//            pets.add(extractPet(rs));
//        }
//        return pets;
//    }

    @Override
    public Pet findByName(String pet) {
        return null;
    }

    @Override
    public Long insert(Pet pet) {
        String query = "INSERT INTO pets(name, type, breed, gender, age) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            System.out.println(pet.getName());
//            System.out.println(pet.getType());
//            System.out.println(pet.getBreed());
//            System.out.println(pet.getGender());
            System.out.println(pet.getAge());
            stmt.setString(1, pet.getName());
            stmt.setString(2, pet.getType());
            stmt.setString(3, pet.getBreed());
            stmt.setString(4, pet.getGender());
            stmt.setInt(5, pet.getAge());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new pet", e);
        }
    }

    private Pet extractPet(ResultSet rs) throws SQLException {
        return new Pet(
                rs.getLong("id"),
                rs.getString("name"),
                rs.getString("type"),
                rs.getString("breed"),
                rs.getString("gender"),
                rs.getString("age")
        );
    }
    private List<Pet> createPetsFromResults(ResultSet rs) throws SQLException {
        List<Pet> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractPet(rs));
        }
        return ads;
    }
//    public static void main(String[] args) {
//        Config config = new Config();
//        MySQLPetsDao petsDao = new MySQLPetsDao(config);
//        System.out.println();
//
//    }

}
