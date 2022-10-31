package com.example.shopunderwear.dao.impl;

import com.example.shopunderwear.dao.UserDao;
import com.example.shopunderwear.entity.User;
import com.example.shopunderwear.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    private static UserDaoImpl instance;

    public static UserDaoImpl getInstance() {
        instance = new UserDaoImpl();
        return instance;
    }

    @Override
    public boolean insertUser(User user) {
        ConnectionPool connectionPool = ConnectionPool.getInstance();
        Connection connection = connectionPool.getFreeConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("Insert INTO user(name,post_adress,number_phone) VALUES (?,?,?)",PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getIndexPost());
            preparedStatement.setString(3, user.getNumberPhone());
            preparedStatement.executeUpdate();
            ResultSet resultSet=preparedStatement.getGeneratedKeys();
            int id = 0;
            if(resultSet.next()){
                id=resultSet.getInt(1);
                System.out.println("id:"+id);
            }
            user.setId(id);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
