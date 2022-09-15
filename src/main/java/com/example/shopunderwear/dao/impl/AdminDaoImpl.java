package com.example.shopunderwear.dao.impl;

import com.example.shopunderwear.dao.AdminDao;
import com.example.shopunderwear.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDaoImpl implements AdminDao {
    private static AdminDaoImpl instance=null;

    public static AdminDaoImpl getInstance(){
        instance=new AdminDaoImpl();
        return instance;
    }

    @Override
    public boolean input(String login, String password) {
        ConnectionPool connectionPool = ConnectionPool.getInstance();
        Connection connection=null;
        try {
            connection = connectionPool.getFreeConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("Select *from admin WHERE login=? and password=?;");
//            PreparedStatement preparedStatement= connection.prepareStatement("INSERT INTO admin(login,password) VALUES (?,?);");
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
//            preparedStatement.executeUpdate();
            ResultSet resultSet= preparedStatement.executeQuery();
            if(resultSet.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            connectionPool.releaseConnection(connection);
        }
        return false;
    }
}
