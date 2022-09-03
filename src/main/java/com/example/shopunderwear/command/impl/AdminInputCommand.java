package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.entity.Admin;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminInputCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String password,login;
        login=request.getParameter("login");
        password=request.getParameter("password");

        Admin admin=new Admin(login,password);

        if(login.equals(password)){
            System.out.println(true);
        }

        return null;
    }
}
