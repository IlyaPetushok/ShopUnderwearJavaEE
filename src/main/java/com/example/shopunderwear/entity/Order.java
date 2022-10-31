package com.example.shopunderwear.entity;

import java.util.Date;

public class Order {
    private int id;
    private User user;
    private String status;
    private Date date;

    public Order(User user, String status, Date date) {
        this.user = user;
        this.status = status;
        this.date = date;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
