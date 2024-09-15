package com.alexanderdoma.peruinolvidable.utilies;

import java.util.ResourceBundle;

public class MessagesManager {
    public static String getProperty(String key){
        ResourceBundle objResourceBundle = ResourceBundle.getBundle("keys.messages");
        return objResourceBundle.getString(key);
    }
}
