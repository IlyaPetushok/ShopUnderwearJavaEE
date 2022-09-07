package com.example.shopunderwear.service.impl;

import com.example.shopunderwear.dao.AdminDao;
import com.example.shopunderwear.dao.impl.AdminDaoImpl;
import com.example.shopunderwear.entity.Admin;
import com.example.shopunderwear.security.Encription;
import com.example.shopunderwear.service.AdminService;

public class AdminServiceImpl implements AdminService {
    private static AdminServiceImpl instance=null;

    public static AdminServiceImpl getInstance(){
        instance=new AdminServiceImpl();
        return instance;
    }

    @Override
    public boolean adminInputDao(Admin admin) {
        Encription encription=new Encription();
        String login= admin.getLogin();
        String password=admin.getPassword();
        AdminDao adminDao=AdminDaoImpl.getInstance();
        return adminDao.input(login,encription.cipher(password));
    }
}
