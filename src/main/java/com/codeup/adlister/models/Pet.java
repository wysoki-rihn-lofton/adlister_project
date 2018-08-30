package com.codeup.adlister.models;

public class Pet {
    private long id;
    private String name;
    private String type;
    private String breed;
    private String gender;
    private int age;

    public Pet(long id, String name, String type, String breed, String gender, String age) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.breed = breed;
        this.gender = gender;
        this.age = Integer.parseInt(age);
    }

    public Pet(String name, String type, String breed, String gender, String age) {
        this.name = name;
        this.type = type;
        this.breed = breed;
        this.gender = gender;
        this.age = Integer.parseInt(age);
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}


