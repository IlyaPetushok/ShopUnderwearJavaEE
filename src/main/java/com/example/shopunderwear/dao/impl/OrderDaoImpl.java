package com.example.shopunderwear.dao.impl;

import com.example.shopunderwear.dao.OrderDao;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class OrderDaoImpl implements OrderDao {
    private static final OrderDaoImpl instance = new OrderDaoImpl();

    public static OrderDaoImpl getInstance() {
        return instance;
    }

    @Override
    public boolean insertOrderDao(int id, List<Item> item) {
        try {
            Connection connection = ConnectionPool.getInstance().getFreeConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("Insert Into orders(time_create,status_order,key_order,user_iduser) VALUES (?,?,?,?);", PreparedStatement.RETURN_GENERATED_KEYS);
            Date date = new Date();
            preparedStatement.setString(1,"fvgkg");
            preparedStatement.setString(2, "create");
            preparedStatement.setString(3, "key" + id);
            preparedStatement.setInt(4, id);
            preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();
            int idOrder = 0;
            if (resultSet.next()) {
                idOrder = resultSet.getInt(1);
                System.out.println("idOrder:" + idOrder);
            }
            PreparedStatement preparedStatement1 = connection.prepareStatement("INSERT INTO item_has_order(item_iditem,order_idorder) VALUES (?,?);");
            for (int i = 0; i < item.size(); i++) {
                preparedStatement1.setInt(1,item.get(i).getId());
                preparedStatement1.setInt(2,idOrder);
                preparedStatement1.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
