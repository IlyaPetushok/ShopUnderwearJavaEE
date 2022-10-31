package com.example.shopunderwear.service;

import com.example.shopunderwear.entity.User;

import java.sql.SQLException;

public interface UserService {
    boolean createUser(User user) throws SQLException;
}
