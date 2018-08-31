package com.codeup.adlister.dao;

import com.codeup.adlister.models.Pet;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Pets {
    Pet findByName(String pet);
    // get a list of all the ads
    List<Pet>all();
    List<Pet>findPetsByUser(Long id);
    // insert a new ad and return the new ad's id
    Long insert(Pet pet);
    void deleteAd(Long id);
}

