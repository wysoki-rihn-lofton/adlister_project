package com.codeup.adlister.dao;

import com.codeup.adlister.models.Pet;

import java.util.List;

public interface Pets {
    Pet findByUser(String user);

    Long insert(Pets pet);

    // get a list of all the ads
    List<Pet> all();
    // insert a new ad and return the new ad's id
    Long insert(Pet pet);
}
