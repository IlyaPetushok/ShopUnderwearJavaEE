package com.example.shopunderwear.command;

import com.example.shopunderwear.command.impl.*;

public enum CommandType {
    ADMIN_INPUT_COMMAND(new AdminInputCommand()),
    ADMIN_ADD_ITEM(new AdminAddItemModel()),
    ADMIN_CHANGE_ITEM(new AdminChangeItemCommand()),
    ADMIN_DELETE_ITEM(new AdminDeleteItemCommand()),
    SHOW_ITEM_HOME(new ShowItemCommand()),
    INPUT_CORSINA(new InputCorsinaCommand());

    Command command;

    CommandType(Command command){
        this.command=command;
    }

    public static Command getTypeCommand(String command){
        CommandType commandType=CommandType.valueOf(command.toUpperCase());
        return commandType.command;
    }
}
