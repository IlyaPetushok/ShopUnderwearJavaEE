package com.example.shopunderwear.dao.impl;

import com.example.shopunderwear.dao.ItemDao;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ItemDaoImpl implements ItemDao {

    private static ItemDaoImpl instance=null;

    public static ItemDaoImpl getInstance(){
        instance=new ItemDaoImpl();
        return instance;
    }

    @Override
    public boolean addItem(Item item) {
        Connection connection=null;
        ConnectionPool connectionPool = ConnectionPool.getInstance();
        try {
            connection = connectionPool.getFreeConnection();

            PreparedStatement preparedStatement = connection.prepareStatement("Insert INTO item(photoUrl,name,price,color,material) VALUES (?,?,?,?,?)");
            preparedStatement.setString(1, item.getPhotoUrl());
            preparedStatement.setString(2, item.getName());
            preparedStatement.setString(3, item.getPrice());
            preparedStatement.setString(4, item.getColor());
            preparedStatement.setString(5, item.getMaterial());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException exception) {
            exception.printStackTrace();
        } finally {
            connectionPool.releaseConnection(connection);
        }
        return false;
    }
}
