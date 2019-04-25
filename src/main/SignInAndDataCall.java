package main;

import java.io.IOException;

public class SignInAndDataCall {
    User USERSIGNIN;
    SignInAndDataCall(String useername, String password){
        //Check if username and password match, if they do make USERSIGNIN=the
    }

    //Testing Purpose
    public static void main(String[] args) {

        try {
            User test=new User();
            test.setUsername("hello");
            test.setPassword("world");
            test.AddToUserList();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
