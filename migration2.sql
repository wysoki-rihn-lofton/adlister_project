DROP DATABASE IF EXISTS petlister_db;
CREATE DATABASE petlister_db;
USE petlister_db;

DROP table if exists pets_ad;
DROP table if exists users;


CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username varchar(50) not null ,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  location VARCHAR(100),
  UNIQUE (email, username),
  PRIMARY KEY (id)
);

# CREATE TABLE profiles (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,

#   user_id INT UNSIGNED NOT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (user_id) REFERENCES users(id)
#     ON DELETE CASCADE
# );

# CREATE TABLE pets (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100),
#   type VARCHAR(100),
#   breed VARCHAR (100),
#   gender VARCHAR(100),
#   age INT (20),
#   PRIMARY KEY (id)
# );


CREATE TABLE pets_ad (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  type VARCHAR(100),
  breed VARCHAR (100),
  gender VARCHAR(100),
  age INT (20),
  descrip VARCHAR(500),
  cost FLOAT NOT NULL,
  title VARCHAR(100),
  traits VARCHAR(50) NOT NULL,
  user_id INT UNSIGNED,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

# INSERT INTO traits(Trait)
#     VALUES ("Agressive"),("Loving"),("Friendly")

