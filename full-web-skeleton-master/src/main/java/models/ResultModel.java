package models;

import java.sql.Date;


public class ResultModel {
    String fname;
    String lname;
    Date dob;

    /*
     * @param firstName the users firstname
     * @param lastName the users lastname
     * @param userName the users email .e.g., example@example.com
     * @param password the users password: we usually encrypt it in the database but thats for you to figure out :)
     */

    public ResultModel(String firstName, String lastName, Date DateOfBirth) {
        fname = firstName;
        lname = lastName;
        dob = DateOfBirth;
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

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }




}

