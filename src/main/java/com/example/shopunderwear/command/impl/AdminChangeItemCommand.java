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
        String page=null,name,photo,color,price,material;
        id=Integer.parseInt(request.getParameter("idItemForChange"));
        photo=request.getParameter("photoUrl");
        name=request.getParameter("nameItem");
        color=request.getParameter("colorItem");
        price=request.getParameter("price");
        material=request.getParameter("material");
        Item item=new Item(id,photo,name,price,color,material);
        ItemServiceImpl itemService=ItemServiceImpl.getInstance();
        if(itemService.changeItem(item)){
            items=itemService.showItems();
            request.setAttribute("items",items);
            page="/pages/adminInput.jsp";
        }
        return page;
    }
}
