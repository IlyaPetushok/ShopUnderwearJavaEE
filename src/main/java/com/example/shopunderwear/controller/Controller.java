package com.example.shopunderwear.controller;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.command.CommandType;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/hotMeBy.by")
public class Controller extends HttpServlet{
    @Override
    public void init() throws ServletException {
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String commandStr=null;
        if(request.getParameter("command")==null){
            commandStr="show_item_home";
        }else {
            commandStr=request.getParameter("command");
        }
//        System.out.println(commandStr);
        Command command= CommandType.getTypeCommand(commandStr);
        String page=command.execute(request,response);
//        request.setAttribute("hi","this is ok");
        request.getRequestDispatcher(page).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
