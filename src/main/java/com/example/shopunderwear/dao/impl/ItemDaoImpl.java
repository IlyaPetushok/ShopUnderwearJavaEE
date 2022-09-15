package com.example.shopunderwear.dao.impl;

import com.example.shopunderwear.dao.ItemDao;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.pool.ConnectionPool;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<Item> showItems() {
        Item item ;
        int id=0;
        String name=null,photoUrl=null,color=null,price=null,material=null;
        List<Item> items=new ArrayList<>();
        Connection connection=null;
        ConnectionPool connectionPool=ConnectionPool.getInstance();
        try{
            connection=connectionPool.getFreeConnection();
            Statement statement=connection.createStatement();
            ResultSet resultSet=statement.executeQuery("SELECT * FROM item");
            while (resultSet.next()){
                id=resultSet.getInt(1);
                photoUrl=resultSet.getString(2);
                name=resultSet.getString(3);
                price=resultSet.getString(4);
                color=resultSet.getString(5);
                material=resultSet.getString(6);
                item=new Item(id,photoUrl,name,price,color,material);
                items.add(item);
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        } finally {
            connectionPool.releaseConnection(connection);
        }
        return items;
    }
}
