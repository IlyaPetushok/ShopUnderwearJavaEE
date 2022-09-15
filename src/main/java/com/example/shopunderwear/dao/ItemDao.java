package com.example.shopunderwear.dao;

import com.example.shopunderwear.entity.Item;

import java.util.List;

public interface ItemDao {
    boolean addItem(Item item);
    List<Item> showItems();
}
