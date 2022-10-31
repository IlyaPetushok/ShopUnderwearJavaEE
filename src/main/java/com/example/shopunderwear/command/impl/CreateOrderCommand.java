package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.entity.Item;
import com.example.shopunderwear.entity.User;
import com.example.shopunderwear.service.ItemService;
import com.example.shopunderwear.service.OrderService;
import com.example.shopunderwear.service.UserService;
import com.example.shopunderwear.service.impl.ItemServiceImpl;
import com.example.shopunderwear.service.impl.OrderServiceImpl;
import com.example.shopunderwear.service.impl.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.SQLException;
import java.util.List;

public class CreateOrderCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String idItemsWitchBy=request.getParameter("item");
        String name=request.getParameter("name");
        String post=request.getParameter("post");
        String numberPhone=request.getParameter("telephone");

        User user=new User(name,numberPhone,post);
        UserService userService= UserServiceImpl.getInstance();
        if(userService.createUser(user)){
            System.out.println("iduser:"+user.getId());
            OrderService orderService=new  OrderServiceImpl();
            orderService.createOrder(user,idItemsWitchBy);
        }
        else {
            //польхователь не был создан
        }
        return null;
    }
}
