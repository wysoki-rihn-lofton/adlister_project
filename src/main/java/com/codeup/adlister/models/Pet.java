package com.codeup.adlister.models;

public class Pet {
    private long id;
    private String name;
    private String type;
    private String breed;
    private String gender;
    private int age;
    private String description;
    private Float cost;
    private String title;
    private String traits;
    private Long user_id;

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public Pet(long id, String name, String type, String breed, String gender, String age, String description, String cost, String title, String traits) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.breed = breed;
        this.gender = gender;
        this.age = Integer.parseInt(age);
        this.description = description;
        this.cost = Float.parseFloat(cost);
        this.title = title;
        this.traits = traits;
    }

    public Pet(String name, String type, String breed, String gender, String age, String description, String cost, String title, String traits) {
        this.name = name;
        this.type = type;
        this.breed = breed;
        this.gender = gender;
        this.age = Integer.parseInt(age);
        this.description = description;
        this.cost = Float.parseFloat(cost);
        this.title = title;
        this.traits = traits;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTraits() {
        return traits;
    }

    public void setTraits(String traits) {
        this.traits = traits;
    }
}


