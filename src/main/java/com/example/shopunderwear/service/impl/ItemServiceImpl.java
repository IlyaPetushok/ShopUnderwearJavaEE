package com.example.shopunderwear.service.impl;

import com.example.shopunderwear.dao.impl.ItemDaoImpl;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.ItemService;

import java.util.List;

public class ItemServiceImpl implements ItemService {

    private static ItemServiceImpl instance = null;

    public static ItemServiceImpl getInstance() {
        instance = new ItemServiceImpl();
        return instance;
    }

    @Override
    public boolean deleteItem(int id) {
        ItemDaoImpl itemDao = ItemDaoImpl.getInstance();
        return itemDao.deleteItem(id);
    }

    @Override
    public List<Item> showItems() {
        ItemDaoImpl itemDao = ItemDaoImpl.getInstance();

        return itemDao.showItems();
    }

    @Override
    public boolean addItem(Item item) {
        ItemDaoImpl itemDao = ItemDaoImpl.getInstance();
        item.setPhotoUrl(redactorPhotoUrl(item));

        if (itemDao.addItem(item)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean changeItem(Item item) {
        ItemDaoImpl itemDao = ItemDaoImpl.getInstance();
        item.setPhotoUrl(redactorPhotoUrl(item));
        if (itemDao.changeItem(item)) {
            return true;
        }
        return false;
    }

    private String redactorPhotoUrl(Item item) {
        String photoUrl = item.getPhotoUrl();
        String newPhotoUrl = "https://drive.google.com/uc?export=view&id=";
        if (!photoUrl.substring(0,43).equals(newPhotoUrl)) {
            char arr[] = photoUrl.toCharArray();
            for (int i = 0; i < arr.length; i++) {
                if (arr[i] == 'd' && arr[i + 1] == '/' && arr[i - 1] == '/') {
                    int j = i + 2;
                    System.out.println(j);
                    while (arr[j] != '/') {
                        newPhotoUrl += arr[j];
                        j++;
                    }
                }
            }
        }
        else {
            newPhotoUrl=photoUrl;
        }
        return newPhotoUrl;
    }
}
