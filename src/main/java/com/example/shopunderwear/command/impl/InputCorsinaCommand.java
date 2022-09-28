package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.service.ItemService;
import com.example.shopunderwear.service.impl.ItemServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

public class InputCorsinaCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String indexesItemsInCorsin=request.getParameter("indexes");
//        System.out.println(itemsCorsin);
        ItemService itemService=ItemServiceImpl.getInstance();
        List<Item> items=itemService.showItemsInCorsina(indexesItemsInCorsin);
        indexesItemsInCorsin=itemService.returnIndexesItems(items);
        request.setAttribute("quantity",indexesItemsInCorsin);
        request.setAttribute("items",items);
        return "/pages/corsina.jsp";
    }
}
