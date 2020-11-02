package models;


public class UserInfoModel {
    String email;
    String password;
    String fname;
    String lname;
    String dob;
    String bio;

    public UserInfoModel(String Email, String Password, String firstName, String lastName, String Dob, String Bio){
        email = Email;
        password = Password;
        fname = firstName;
        lname = lastName;
        dob = Dob;
        bio = Bio;
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

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
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
}
