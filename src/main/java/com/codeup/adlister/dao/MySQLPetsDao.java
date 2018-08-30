package com.codeup.adlister.dao;

import com.codeup.adlister.models.Pet;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.List;

public class MySQLPetsDao implements Pets {
    private Connection connection;

//Jillian added private User user;
//    private User user;
//    public MySQLPetsDao(Connection connection, User user) {
//        this.connection = connection;
//        this.user = user;
//    }


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


    public Pet findByUser(String pet) {
        String query = "SELECT * FROM pet WHERE user = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, pet);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding pet", e);
        }
    }

    @Override
    public Long insert(Pets pet) {
        return null;
    }

    @Override
    public Long insert(Pet pet) {
        String query = "INSERT INTO pets(pet, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            stmt.setString(1, user.getPet());
//            stmt.setString(2, user.getEmail());
//            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private Pet extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new Pet(
                rs.getLong("id"),
                rs.getString("user"),
                rs.getString("email"),
                rs.getString("password")
        );
    }

    @Override
    public List<Pet> all() {
        return null;
    }

}
