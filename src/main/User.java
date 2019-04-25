package main;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class User {
    private String username, password, email, name, gender, activitymultiplier;
    private float weight, GoalWeight, height, BMI;
    private int IdealCalorie, age;
    static CreateTableInsertRows table;

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
        age=0;
        gender="other";
        IdealCalorie=0;
        creationDate = new Date();

        /*try {
            table=new CreateTableInsertRows();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
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

        //table.insert(username, password);
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
        writer.append("\nGender: ");
        writer.append(getGender());
        writer.append("\nAge: ");
        writer.append(Integer.toString(getAge()));
        writer.append("\nDaily Activity: ");
        writer.append(getActivitymultiplier());
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
        writer.append("\nIdeal Calorie Consumption: ");
        writer.append(Integer.toString(getIdealCalorie()));
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

    public void setIdealCalorie(int idealCalorie) throws IOException {
        IdealCalorie = idealCalorie;
        MakeUserFile();
    }
    public void setIdealCalorie() throws IOException {
        float calorie=getWeight();
        if(getGender()=="Female") calorie*=0.9;
        else if(getGender()=="Other") calorie*=0.95;
        calorie*=24;
        calorie*=0.85;
        if(getActivitymultiplier()=="Very Light") calorie*=1.3;
        else if(getActivitymultiplier()=="Light") calorie*=1.55;
        else if(getActivitymultiplier()=="Moderate") calorie*=1.65;
        else if(getActivitymultiplier()=="Heavy") calorie*=1.80;
        else if(getActivitymultiplier()=="Very Heavy") calorie*=2;

        setIdealCalorie((int)calorie);
    }

    public void setAge(int age) throws IOException {
        this.age = age;
        MakeUserFile();
    }

    public void setGender(String gender) throws IOException {
        this.gender = gender;
        MakeUserFile();
    }

    public void setActivitymultiplier(String activitymultiplier) throws IOException {
        this.activitymultiplier = activitymultiplier;
        MakeUserFile();
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

    public int getIdealCalorie() {
        return IdealCalorie;
    }

    public String getGender() {
        return gender;
    }

    public int getAge() {
        return age;
    }

    public String getActivitymultiplier() {
        return activitymultiplier;
    }
}