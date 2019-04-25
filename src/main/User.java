package main;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class User {
    private String username, password, email, name;
    private float weight, GoalWeight, height, BMI;


    Date creationDate;

    public User()
    {
        username=" ";
        password= " ";
        email = " ";
        name = " ";
        weight = 0;
        GoalWeight = 0;
        height = 0;
        BMI = 0;
        creationDate = new Date();
    }
    public User(String username, String password) throws IOException {
        this.username = username;
        //NOTE: Create Hash Function for Password
        this.password = password;
        creationDate = new Date();

        email = " ";
        name = " ";
        weight = 0;
        GoalWeight = 0;
        height = 0;
        BMI = 0;


        try {
            AddToUserList();
            MakeUserFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    public void AddToUserList() throws IOException {
        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\UserList.txt";
        String filename = "/Users/mark231916/FitCoder2/UserData/UserList.txt";
        //System.out.println(filename);

        BufferedWriter writer = new BufferedWriter(new FileWriter(filename, true));
        writer.write(username);
        writer.write("\t");
        writer.write(password);
        writer.write("\n");
        writer.close();
    }

    private void MakeUserFile() throws IOException {
        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\" + username;
        String filename = "/Users/mark231916/FitCoder2/UserData/" + username;
        BufferedWriter writer = new BufferedWriter(new FileWriter(filename));

        writer.write("username: ");
        writer.append(getUsername());
        writer.append("\nEmail: ");
        writer.append(getEmail());
        writer.append("\nName: ");
        writer.append(getName());
        writer.append("\nDate Created: ");
        writer.append(getCreationDate().toString());
        writer.append("\n\nWeight: ");
        writer.append(Float.toString(getWeight()));
        writer.append("\nGoal Weight: ");
        writer.append(Float.toString(getGoalWeight()));
        writer.append("\nHeight: ");
        writer.append(Float.toString(getHeight()));
        writer.append("\nBMI: ");
        writer.append(Float.toString(getBMI()));
        writer.close();
    }

    public void setEmail(String email) throws IOException {
        this.email = email;
        MakeUserFile();
    }

    public void setName(String name) throws IOException {
        this.name = name;
        MakeUserFile();
    }

    public void setHeight(float height) throws IOException {
        this.height = height;
        MakeUserFile();
    }

    public void setPassword(String password) throws IOException {
        this.password = password;
    }

    public void setWeight(float weight) throws IOException {
        this.weight = weight;
        MakeUserFile();
    }

    public void setUsername(String username) throws IOException {
        this.username = username;
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

    public String getUsername() {
        return username;
    }

    public void setBMI() throws IOException {
        BMI=weight/(height*height);
        MakeUserFile();
    }

    public void setGoalWeight(float goalWeight) throws IOException {
        GoalWeight = goalWeight;
        MakeUserFile();
    }

    public float getGoalWeight() {
        return GoalWeight; }

    public Date getCreationDate() {
        return creationDate;
    }

}