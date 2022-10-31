package com.example.shopunderwear.command;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.SQLException;

public interface Command {
    String execute(HttpServletRequest request, HttpServletResponse response) throws SQLException;
}
