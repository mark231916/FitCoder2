package main;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class User {
    private String username, password, email, name;
    private float weight, height, BMI;
    Date creationDate;

    User(String username, String password)
    {
        this.username=username;
        //NOTE: Create Hash Function for Password
        this.password=password;
        creationDate=new Date();


        try {
            AddUserInfo();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void AddUserInfo() throws IOException {
        BufferedWriter writer = new BufferedWriter(new FileWriter("UserList.txt"));
        writer.append(' ');
        writer.append(username);
        writer.append("\t");
        writer.append(password);
        writer.append("\n");
        writer.close();

    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public float getBMI() {
        return BMI;
    }

    public float getHeight() {
        return height;
    }

    public float getWeight() {
        return weight;
    }

    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public void setBMI() {
        BMI=weight/(height*height);
    }

}