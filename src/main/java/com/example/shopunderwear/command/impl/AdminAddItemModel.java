package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.impl.ItemServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

public class AdminAddItemModel implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        List<Item> items;
        ItemServiceImpl itemService=ItemServiceImpl.getInstance();
        Item item=itemService.returnRequestItem(request);
        if(itemService.addItem(item)){
            items=itemService.showItems();
            request.setAttribute("items",items);
        }
        return "/pages/adminInput.jsp";
    }
}
