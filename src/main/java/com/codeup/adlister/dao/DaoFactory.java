package com.codeup.adlister.dao;

public class DaoFactory {
    private static Users usersDao;
    private static Pets petsDao;
    private static Config config = new Config();

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Pets getPetsDao() {
        if (petsDao == null) {
            petsDao = new MySQLPetsDao(config);
        }
        return petsDao;
    }
}
