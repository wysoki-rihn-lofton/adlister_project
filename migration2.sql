DROP DATABASE IF EXISTS petlister_db;
CREATE DATABASE petlister_db;
USE petlister_db;

DROP table if exists ads;
DROP table if exists pets;
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


CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(100),
  description VARCHAR(500),
  cost FLOAT NOT NULL,
  username VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES users(id)
);

CREATE TABLE pets (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  type VARCHAR(100),
  breed VARCHAR (100),
  gender VARCHAR(100),
  age INT (20),
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES ads(id)
);

SELECT * FROM ads