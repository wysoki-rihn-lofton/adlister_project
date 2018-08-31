package com.codeup.adlister.dao;

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
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    private List<Pet> all(ResultSet rs) throws SQLException {
        List<Pet> pets = new ArrayList<>();
        while (rs.next()) {
            pets.add(extractPet(rs));
        }
        return pets;
    }

    @Override
    public Pet findByName(String pet) {
        return null;
    }

//    @Override
//    public List<Pets> all() {
//        return null;
//    }
@Override
public List<Pet> all() {
    PreparedStatement stmt = null;
    try {
        stmt = connection.prepareStatement("SELECT * FROM pets");
        ResultSet rs = stmt.executeQuery();
        return createPetsFromResults(rs);
    } catch (SQLException e) {
        throw new RuntimeException("Error retrieving all ads.", e);
    }
}
    @Override
    public Long insert(Pet pet) {
        String query = "INSERT INTO pets(name, type, breed, gender, age, description, cost, title, traits, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
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
            stmt.setString(6, pet.getDescription());
            stmt.setFloat(7, pet.getCost());
            stmt.setString(8, pet.getTitle());
            stmt.setString(9, pet.getTraits());
            stmt.setLong(10, pet.getUser_id());


            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new pet", e);
        }
    }

    public Pet extractPet(ResultSet rs) throws SQLException {
        return new Pet(
                rs.getLong("id"),
                rs.getString("name"),
                rs.getString("type"),
                rs.getString("breed"),
                rs.getString("gender"),
                rs.getString("age"),
                rs.getString("description"),
                rs.getString("cost"),
                rs.getString("title"),
                rs.getString("traits")
        );
    }
    private List<Pet> createPetsFromResults(ResultSet rs) throws SQLException {
        List<Pet> pets = new ArrayList<>();
        while (rs.next()) {
            pets.add(extractPet(rs));
        }
        return pets;
    }
    public List<Pet> findPetsByUser(Long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM pets WHERE user_id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createPetsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }


    }


//    public static void main(String[] args) {
//        Config config = new Config();
//        MySQLPetsDao petsDao = new MySQLPetsDao(config);
//        System.out.println();
//    }
}


