package com.example.shopunderwear.controller;

import java.io.*;

import com.example.shopunderwear.command.Command;
import com.example.shopunderwear.command.CommandType;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/pages/adminHotMeBy")
public class AdminController extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String commandStr=request.getParameter("command");
        Command command= CommandType.getTypeCommand(commandStr);
        String page=command.execute(request,response);
//        response.sendRedirect(request.getContextPath()+page);
        request.getRequestDispatcher(page).forward(request, response);
    }

    public void destroy() {
    }
}