package com.example.shopunderwear.service.impl;

import com.example.shopunderwear.dao.ItemDao;
import com.example.shopunderwear.dao.OrderDao;
import com.example.shopunderwear.dao.impl.OrderDaoImpl;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.entity.User;
import com.example.shopunderwear.service.ItemService;
import com.example.shopunderwear.service.OrderService;

import java.util.List;

public class OrderServiceImpl implements OrderService {
    @Override
    public boolean createOrder(User user, String indexItems) {
        OrderDao orderDao= OrderDaoImpl.getInstance();
        ItemService itemService=ItemServiceImpl.getInstance();
        List<Item> items=itemService.showItemsInCorsina(indexItems);

        orderDao.insertOrderDao(user.getId(),items);
        return true;
    }
}
