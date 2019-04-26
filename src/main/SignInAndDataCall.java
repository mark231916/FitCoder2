package main;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import static java.lang.System.exit;

public class SignInAndDataCall {
    User signin;
    public SignInAndDataCall(){
        signin= new User();
    }

    public User SignIn(String username, String password) throws IOException, ParseException {
        boolean coorect =false;

        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\UserList.txt";
        String filename = "/Users/mark231916/FitCoder2/UserData/UserList.txt";
        //String filename = "/UserList.txt";

        BufferedReader bufferedReader = new BufferedReader(new FileReader(filename));
            String line = bufferedReader.readLine();
            while(line != null) {
                String [] arr=line.split(" ");
                if(username.equals(arr[0]) && password.equals((arr[1])))
                {
                    coorect=true; break;
                }
                line = bufferedReader.readLine();
            }

            if (coorect)
            {
                signin.setUsername(username);
                signin.setPassword(password);
                setSigninParameters(username);
                return signin;
            }
        return null;
    }

    public void setSigninParameters(String username) throws IOException, ParseException {
        //String filename="C:\\Users\\arshp\\IdeaProjects\\FitCoder2\\UserData\\" + username;
        String filename = "/Users/mark231916/FitCoder2/UserData/" + username;
        //String filename = "/" + username;

        BufferedReader bufferedReader = new BufferedReader(new FileReader(filename));

        int linenumber=1;
        String line = bufferedReader.readLine();
        while(line != null) {
            String [] arr=line.split("-");
            System.out.println(arr[0] + " " + arr[1]);
            switch(linenumber)
            {
                case 1: break;
                case 2: signin.setEmail(arr[1]); break;
                case 3: signin.setName(arr[1]); break;
                case 4: signin.setGender(arr[1]); break;
                case 5: signin.setAge(Integer.parseInt(arr[1])); break;
                case 6: signin.setActivitymultiplier(arr[1]); break;
                case 7: signin.setCreationDate(new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy").parse(arr[1])); break;
                case 8: signin.setWeight(Float.parseFloat(arr[1])); break;
                case 9: signin.setGoalWeight(Float.parseFloat(arr[1])); break;
                case 10: signin.setHeight(Float.parseFloat(arr[1])); break;
                case 11: signin.setBMI(); break;
                case 12: signin.setIdealCalorie(Integer.parseInt(arr[1]));
            }

            if(linenumber>12) signin.setCalorie(arr[0], Integer.parseInt(arr[1]), false);
            line = bufferedReader.readLine();
            linenumber++;
        }
    }

    //Testing Purpose
    public static void main(String[] args) {

        try {
            User test=new User();
            test.setUsername("hello");
            test.setPassword("world");
            test.AddToUserList();
            test.setEmail("hello@hello");
            test.setName("name");
            test.setAge(21);
            test.setActivitymultiplier("Moderate");
            test.setGender("Male");
            test.setWeight(100);
            test.setGoalWeight(75);
            test.setHeight((float) 1.8);
            test.setBMI();
            test.setIdealCalorie(2500);
            test.MakeUserFile();
            test.setCalorie("07/07/2123", 0001, true);
            test.setCalorie("09/25/2615", 5678, true);
            test.setCalorie("06/17/2177", 8910, true);
            test.setCalorie("11/04/2173", 1112, true);
            test.setCalorie("07/07/2123", 1233, true);
            test.MakeUserFile();
            test=null;


            SignInAndDataCall test2=new SignInAndDataCall();
            test=test2.SignIn("hello", "world");
            if (test==null)
            {
                System.out.println("Wrong Password");
            }
            else System.out.println(test.getGraph());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
