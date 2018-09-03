package com.codeup.adlister.dao;

import com.codeup.adlister.models.Pet;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Pets {
    Pet findByName(String pet);
    List<Pet>all();
    List<Pet>findPetsByUser(Long id);
    Long insert(Pet pet);
    void deleteAd(Long id);
}

