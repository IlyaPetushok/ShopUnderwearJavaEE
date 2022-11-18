package com.example.shopunderwear.bot;

import com.example.shopunderwear.entity.User;
import com.example.shopunderwear.service.OrderService;
import com.example.shopunderwear.service.impl.OrderServiceImpl;
import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Update;
import org.telegram.telegrambots.meta.exceptions.TelegramApiException;

public class TelegramBot extends TelegramLongPollingBot {

    @Override
    public String getBotUsername() {
        return "HotMeBy";
    }

    @Override
    public String getBotToken() {
        return "5678280183:AAFWRlBzQJhDb_GR9RLPSnkM2dpo-sV3Efk";
    }

    @Override
    public void onUpdateReceived(Update update) {

    }

    public void sendMessageOrder(User user,String idItems,int idOrder) throws TelegramApiException {
        execute(SendMessage
                .builder()
                .chatId("525877770")
                .text(createSendMessage(user,idItems,idOrder))
                .build());
    }

    private String createSendMessage(User user,String idItems,int idOrder){
        OrderService orderService= new OrderServiceImpl();
        StringBuilder text=new StringBuilder();
        text.append(user);
        text.append("\n"+orderService.getInfoOrder(idOrder));
        return text.toString();
    }

}
