package com.example.shopunderwear.dao;

import com.example.shopunderwear.entity.User;

import java.sql.SQLException;

public interface UserDao {
    boolean insertUser(User user) throws SQLException;
}
