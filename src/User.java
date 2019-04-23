public class User {
    private String username, password, email, name;
    private float weight, height, BMI;
    private int idealCalorieConsumption;

    User(String username, String password)
    {
        this.username=username;
        this.password=password;
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

    public void setIdealCalorieConsumption(int idealCalorieConsumption) {
        this.idealCalorieConsumption = idealCalorieConsumption;
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

    public int getIdealCalorieConsumption() {
        return idealCalorieConsumption;
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
