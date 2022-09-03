package com.example.shopunderwear.command;

import com.example.shopunderwear.command.impl.AdminInputCommand;

public enum CommandType {
    ADMIN_INPUT_COMMAND(new AdminInputCommand());

    Command command;

    CommandType(Command command){
        this.command=command;
    }

    public static Command getTypeCommand(String command){
        CommandType commandType=CommandType.valueOf(command.toUpperCase());
        return commandType.command;
    }
}
