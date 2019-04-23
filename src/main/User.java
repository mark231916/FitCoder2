package main;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class User {
    private String username, password, email, name;
    private float weight, height, BMI;
    Date creationDate;

    public User(String username, String password)
    {
        this.username=username;
        //NOTE: Create Hash Function for Password
        this.password=password;
        creationDate=new Date();


        try {
            AddToUserList();
            MakeUserFile();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void AddToUserList() throws IOException {
        String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\UserList.txt";
        //System.out.println(filename);

        BufferedWriter writer = new BufferedWriter(new FileWriter(filename, true));
        writer.write(username);
        writer.write("\t");
        writer.write(password);
        writer.write("\n");
        writer.close();
    }

    private void MakeUserFile()
    {

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