package com.example.shopunderwear.bot;

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

    public void sendMessageOrder() throws TelegramApiException {
        execute(SendMessage
                .builder()
                .chatId("525877770")
                .text("hi")
                .build());
    }

}
