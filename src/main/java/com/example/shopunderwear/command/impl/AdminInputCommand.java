package com.example.shopunderwear.command.impl;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.entity.Admin;
import com.example.shopunderwear.service.AdminService;
import com.example.shopunderwear.service.impl.AdminServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminInputCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String page,password,login;
        login=request.getParameter("login");
        password=request.getParameter("password");

        Admin admin=new Admin(login,password);

        AdminService adminService=AdminServiceImpl.getInstance();
        if(adminService.adminInputDao(admin)){
            page="/pages/adminInput.jsp";
        }
        else {
            page="/";
        }
        return page;
    }
}
