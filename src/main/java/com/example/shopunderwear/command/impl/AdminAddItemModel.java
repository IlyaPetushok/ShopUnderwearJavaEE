package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.dao.impl.ItemDaoImpl;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.impl.ItemServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminAddItemModel implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String name,photo,color,price,material;
        photo=request.getParameter("photoUrl");
        name=request.getParameter("nameItem");
        color=request.getParameter("colorItem");
        price=request.getParameter("price");
        material=request.getParameter("material");
        Item item=new Item(photo,name,price,color,material);
        ItemServiceImpl itemService=ItemServiceImpl.getInstance();
        if(itemService.addItem(item)){
            System.out.println(true);
        }
        return null;
    }
}
