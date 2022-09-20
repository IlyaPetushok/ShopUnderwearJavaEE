package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.impl.ItemServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

public class AdminChangeItemCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        int id;
        List<Item> items;
        String page=null;
        id=Integer.parseInt(request.getParameter("idItemForChange"));
        ItemServiceImpl itemService=ItemServiceImpl.getInstance();
        Item item=itemService.returnRequestItem(request,id);
        if(itemService.changeItem(item)){
            items=itemService.showItems();
            request.setAttribute("items",items);
            page="/pages/adminInput.jsp";
        }
        return page;
    }
}
