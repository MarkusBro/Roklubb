package models;



public class UserInfoModel {
    private String ID;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String dob;
    private String bio;
    private String userType;
    private String className;
    private String club;

    public UserInfoModel(String ID,String email, String password, String firstName, String lastName, String dob, String bio, String userType, String className, String club) {
        this.ID = ID;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.bio = bio;
        this.userType = userType;
        this.className = className;
        this.club = club;
    }
    public UserInfoModel(String club) {
        this.club = club;
    }
    public UserInfoModel(String ID, String firstName, String lastName, String userType, String className, String club){
        this.ID = ID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userType = userType;
        this.className = className;
        this.club = club;
    }
    public UserInfoModel(String ID, String firstName, String lastName, String dob, String userType, String className, String club){
        this.ID = ID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.userType = userType;
        this.className = className;
        this.club = club;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }
}
