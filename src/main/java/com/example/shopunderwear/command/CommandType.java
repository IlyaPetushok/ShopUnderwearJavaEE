package com.example.shopunderwear.command;

import com.example.shopunderwear.command.impl.AdminAddItemModel;
import com.example.shopunderwear.command.impl.AdminChangeItemCommand;
import com.example.shopunderwear.command.impl.AdminDeleteItemCommand;
import com.example.shopunderwear.command.impl.AdminInputCommand;

public enum CommandType {
    ADMIN_INPUT_COMMAND(new AdminInputCommand()),
    ADMIN_ADD_ITEM(new AdminAddItemModel()),
    ADMIN_CHANGE_ITEM(new AdminChangeItemCommand()),
    ADMIN_DELETE_ITEM(new AdminDeleteItemCommand());

    Command command;

    CommandType(Command command){
        this.command=command;
    }

    public static Command getTypeCommand(String command){
        CommandType commandType=CommandType.valueOf(command.toUpperCase());
        return commandType.command;
    }
}
