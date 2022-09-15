package com.example.shopunderwear.service.impl;

import com.example.shopunderwear.dao.impl.ItemDaoImpl;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.ItemService;

import java.util.List;

public class ItemServiceImpl implements ItemService {

    private static ItemServiceImpl instance=null;

    public static ItemServiceImpl getInstance(){
        instance=new ItemServiceImpl();
        return instance;
    }

    @Override
    public List<Item> showItems() {
        ItemDaoImpl itemDao=ItemDaoImpl.getInstance();

        return itemDao.showItems();
    }

    @Override
    public boolean addItem(Item item) {
        ItemDaoImpl itemDao=ItemDaoImpl.getInstance();
        if(itemDao.addItem(item)){
            return true;
        }
        return false;
    }
}
