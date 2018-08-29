DROP DATABASE IF EXISTS petlister_db;
CREATE DATABASE petlister_db;
USE petlister_db;

DROP table if exists ads;
DROP table if exists profiles;
DROP table if exists pet_traits;
DROP table if exists pets;
DROP table if exists traits;
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
#
#   username VARCHAR (100),
#
#   user_id INT UNSIGNED NOT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (user_id) REFERENCES users(id)
#     ON DELETE CASCADE
# );

CREATE TABLE pets (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Name VARCHAR(100),
  Type VARCHAR(100),
  Breed VARCHAR (100),
  Gender VARCHAR(100),
  Age VARCHAR (20),
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(100),
  description VARCHAR(500),
  cost FLOAT NOT NULL,
  profile_id INT UNSIGNED NOT NULL,
  pet_id INT UNSIGNED NOT NULL,
  phone VARCHAR (20),
  PRIMARY KEY (id),
  FOREIGN KEY (profile_id) REFERENCES profiles(id),
  FOREIGN KEY (pet_id) REFERENCES pets(id)
);



CREATE TABLE traits (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Trait VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE pet_traits (
  pet_id INT UNSIGNED NOT NULL,
  trait_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (pet_id) REFERENCES pets(id),
  FOREIGN KEY (trait_id) REFERENCES traits(id)
);

INSERT INTO traits(Trait)
    VALUES ("Agressive"),("Loving"),("Friendly")

