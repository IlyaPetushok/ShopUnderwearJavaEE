package com.example.shopunderwear.service.impl;

import com.example.shopunderwear.dao.UserDao;
import com.example.shopunderwear.dao.impl.UserDaoImpl;
import com.example.shopunderwear.entity.User;
import com.example.shopunderwear.service.UserService;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    private static final UserServiceImpl instance=new UserServiceImpl();

    public static UserServiceImpl getInstance(){
        return instance;
    }

    @Override
    public boolean createUser(User user) throws SQLException {
        UserDao userDao=UserDaoImpl.getInstance();
        return userDao.insertUser(user);
    }
}
