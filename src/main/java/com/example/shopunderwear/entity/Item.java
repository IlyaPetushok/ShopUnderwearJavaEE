package com.example.shopunderwear.entity;

public class Item {
    private String photoUrl,name,price,color,material;

    public Item(String photoUrl, String name, String price, String color, String material) {
        this.photoUrl = photoUrl;
        this.name = name;
        this.price = price;
        this.color = color;
        this.material = material;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }
}
