package com.example.shopunderwear.entity;

public class User {
    private int id;
    private String name;
    private String numberPhone;
    private String indexPost;

    public User(int id, String name, String numberPhone, String indexPost) {
        this.id = id;
        this.name = name;
        this.numberPhone = numberPhone;
        this.indexPost = indexPost;
    }

    public User(String name, String numberPhone, String indexPost) {
        this.name = name;
        this.numberPhone = numberPhone;
        this.indexPost = indexPost;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getIndexPost() {
        return indexPost;
    }

    public void setIndexPost(String indexPost) {
        this.indexPost = indexPost;
    }
}
