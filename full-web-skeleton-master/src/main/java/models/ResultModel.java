/*
 *   ResultModel for Getters/Setters
 *   Used in ResultTableServlet and UserRepository
 *
 *   @Version 2.0
 *
 *   @Author Michael H. Valen
 */

package models;

import java.sql.Date;


public class ResultModel {
    String fname;
    String lname;
    Date dob;

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

