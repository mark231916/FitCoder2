package main;

import java.io.*;
import java.util.*;


public class User {
    private String username, password, email, name, gender, activitymultiplier;
    private float weight, GoalWeight, height, BMI;
    private int IdealCalorie, age;
    static CreateTableInsertRows table;

    Map<String, Integer> calorie = new TreeMap<>();
    Date creationDate;
    ArrayList<Long> CalDate;
    ArrayList<Integer> dailycalories;

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
        gender="Other";
        IdealCalorie=0;
        creationDate = new Date();
        dailycalories= new ArrayList<>();
        CalDate=new ArrayList<>();

        try {
            table=new CreateTableInsertRows();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void AddToUserList() throws IOException {
        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\UserList.txt";
        String filename = "/Users/mark231916/FitCoder2/UserData/UserList.txt";
        //String filename = "/UserList.txt";
        //System.out.println(filename);

        BufferedWriter writer = new BufferedWriter(new FileWriter(filename, true));
        writer.write(username);
        writer.write(" ");
        writer.write(password);
        writer.write("\n");
        writer.close();

        table.insert(username, password);
    }

    public void MakeUserFile() throws IOException {
        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\" + username;
        String filename = "/Users/mark231916/FitCoder2/UserData/" + username;
        //String filename = "/" + username;
        BufferedWriter writer = new BufferedWriter(new FileWriter(filename));

        writer.write("username-");
        writer.append(getUsername());
        writer.append("\nEmail-");
        writer.append(getEmail());
        writer.append("\nName-");
        writer.append(getName());
        writer.append("\nGender-");
        writer.append(getGender());
        writer.append("\nAge-");
        writer.append(Integer.toString(getAge()));
        writer.append("\nDaily Activity-");
        writer.append(getActivitymultiplier());
        writer.append("\nDate Created-");
        writer.append(getCreationDate().toString());
        writer.append("\nWeight-");
        writer.append(Float.toString(getWeight()));
        writer.append("\nGoal Weight-");
        writer.append(Float.toString(getGoalWeight()));
        writer.append("\nHeight-");
        writer.append(Float.toString(getHeight()));
        writer.append("\nBMI-");
        writer.append(Float.toString(getBMI()));
        writer.append("\nIdeal Calorie Consumption-");
        writer.append(Integer.toString(getIdealCalorie()));

        Set set = calorie.entrySet();
        Iterator iterator=set.iterator();
        while(iterator.hasNext())
        {
            Map.Entry entry = (Map.Entry) iterator.next();
            writer.append("\n");
            writer.append((String) entry.getKey());
            writer.append("-");
            writer.append(Integer.toString((int)entry.getValue()));
        }
        writer.close();
    }

    public void setCalorie(String date, int cal, boolean format) throws IOException {
        if (format) {
            String[] A = date.split("/");
            String correctdate = A[2] + A[0] + A[1];
            calorie.put(correctdate, cal);
        }
        else calorie.put(date,cal);

        setArraylist();
        //MakeUserFile();
    }

    public void setArraylist()
    {
        CalDate.clear();
        dailycalories.clear();

        Set set = calorie.entrySet();
        Iterator iterator=set.iterator();
        while(iterator.hasNext())
        {
            Map.Entry entry = (Map.Entry) iterator.next();
            CalDate.add(Long.parseLong((String)entry.getKey()));
            dailycalories.add((int)entry.getValue());
        }
    }

    public void setEmail(String email)  {
        this.email = email;

    }

    public void setName(String name)  {
        this.name = name;

    }

    public void setHeight(float height)  {
        this.height = height;

    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setWeight(float weight) {
        this.weight = weight;

    }

    public boolean setUsername(String username) throws IOException {
        boolean existn =true;

        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\UserList.txt";
        String filename = "/Users/mark231916/FitCoder2/UserData/UserList.txt";
        //String filename = "/UserList.txt";

        BufferedReader bufferedReader = new BufferedReader(new FileReader(filename));
        String line = bufferedReader.readLine();
        while(line != null) {
            String [] arr=line.split(" ");
            if(username.equals(arr[0]))
            {
                existn=false; return existn;
            }
            line = bufferedReader.readLine();
        }

        this.username = username;

        return existn;
    }

    public void setIdealCalorie(int idealCalorie) {
        IdealCalorie = idealCalorie;

    }
    public void setIdealCalorie() {
        float calorie=getGoalWeight();
        if(getGender().equals("Female")) calorie*=0.9;
        else if(getGender().equals("Other")) calorie*=0.95;
        calorie*=24;
        calorie*=0.85;
        if(getActivitymultiplier().equals("Very Light")) calorie*=1.3;
        else if(getActivitymultiplier().equals("Light")) calorie*=1.55;
        else if(getActivitymultiplier().equals("Moderate")) calorie*=1.65;
        else if(getActivitymultiplier().equals("Heavy")) calorie*=1.80;
        else if(getActivitymultiplier().equals("Very Heavy")) calorie*=2;

        setIdealCalorie((int)calorie);
    }

    public void setAge(int age) throws IOException {
        this.age = age;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public void setGender(String gender) throws IOException {
        this.gender = gender;
    }

    public void setActivitymultiplier(String activitymultiplier) throws IOException {
        this.activitymultiplier = activitymultiplier;
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

    public void setBMI()  {
        BMI=weight/(height*height);
    }

    public void setGoalWeight(float goalWeight) throws IOException {
        GoalWeight = goalWeight;
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

    public ArrayList<Integer> getDailycalories() {
        return dailycalories;
    }

    public ArrayList<Long> getCalDate() {
        return CalDate;
    }
}