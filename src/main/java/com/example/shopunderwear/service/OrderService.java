package com.example.shopunderwear.service;

import com.example.shopunderwear.entity.User;

import java.util.List;

public interface OrderService {
    boolean createOrder(User user, String indexItems);
}
