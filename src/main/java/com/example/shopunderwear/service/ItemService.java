package com.example.shopunderwear.service;

import com.example.shopunderwear.entity.Item;

import java.util.List;

public interface ItemService {
    boolean addItem(Item item);
    List<Item> showItems();
    boolean changeItem(Item item);
    boolean deleteItem(int id);
}
