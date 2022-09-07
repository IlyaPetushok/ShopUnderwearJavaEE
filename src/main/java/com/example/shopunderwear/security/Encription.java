package com.example.shopunderwear.security;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encription {
    public String cipher(String password){
        MessageDigest sha1= null;
        try {
            sha1 = MessageDigest.getInstance("SHA-1");//const
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        byte[] bytes=sha1.digest(password.getBytes());
        StringBuilder builder=new StringBuilder();
        for(byte cipherPassword:bytes){
            builder.append(String.format("%02X",cipherPassword));
        }
        return builder.toString();
    }
}
