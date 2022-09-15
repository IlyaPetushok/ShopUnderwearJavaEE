package com.example.shopunderwear.service.impl;

import com.example.shopunderwear.dao.impl.ItemDaoImpl;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.ItemService;

public class ItemServiceImpl implements ItemService {

    private static ItemServiceImpl instance=null;

    public static ItemServiceImpl getInstance(){
        instance=new ItemServiceImpl();
        return instance;
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
