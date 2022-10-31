package com.example.shopunderwear.dao;

import com.example.shopunderwear.entity.Item;

import java.util.List;

public interface OrderDao {
    boolean insertOrderDao(int id, List<Item> idItems);
}
