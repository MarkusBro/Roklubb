package models;


import java.sql.Date;
import java.sql.Time;

public class ClassResultatsModel {
    String fname;
    String lname;
    String clubname;
    String classname;
    Date startdate;
    Double watt5;
    Time time5;
    Double watt2;
    Time time2;
    Double watt60;
    Double lierowprosent;
    Double lierowkg;
    Double squatprosent;
    Double squatkg;
    int flexibility;


    public ClassResultatsModel(String firstName, String lastName, String clubName, String className, Date startDate, Double Watt5, Time Time5, Double Watt2, Time Time2, Double Watt60, Double lierowProsent, Double lierowKg, Double squatProsent, Double squatKg, int Flexibility) {
        fname = firstName;
        lname = lastName;
        clubname = clubName;
        classname = className;
        startdate = startDate;
        watt5 = Watt5;
        time5 = Time5;
        watt2 = Watt2;
        time2 = Time2;
        watt60 = Watt60;
        lierowprosent = lierowProsent;
        lierowkg = lierowKg;
        squatprosent = squatProsent;
        squatkg = squatKg;
        flexibility = Flexibility;

    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public int getFlexibility() {
        return flexibility;
    }

    public void setFlexibility(int flexibility) {
        this.flexibility = flexibility;
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

    public String getClubname() {
        return clubname;
    }

    public void setClubname(String clubname) {
        this.clubname = clubname;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public Double getWatt5() {
        return watt5;
    }

    public void setWatt5(Double watt5) {
        this.watt5 = watt5;
    }

    public Time getTime5() {
        return time5;
    }

    public void setTime5(Time time5) {
        this.time5 = time5;
    }

    public Double getWatt2() {
        return watt2;
    }

    public void setWatt2(Double watt2) {
        this.watt2 = watt2;
    }

    public Time getTime2() {
        return time2;
    }

    public void setTime2(Time time2) {
        this.time2 = time2;
    }

    public Double getWatt60() {
        return watt60;
    }

    public void setWatt60(Double watt60) {
        this.watt60 = watt60;
    }

    public Double getLierowprosent() {
        return lierowprosent;
    }

    public void setLierowprosent(Double lierowprosent) {
        this.lierowprosent = lierowprosent;
    }

    public Double getLierowkg() {
        return lierowkg;
    }

    public void setLierowkg(Double lierowkg) {
        this.lierowkg = lierowkg;
    }

    public Double getSquatprosent() {
        return squatprosent;
    }

    public void setSquatprosent(Double squatprosent) {
        this.squatprosent = squatprosent;
    }

    public Double getSquatkg() {
        return squatkg;
    }

    public void setSquatkg(Double squatkg) {
        this.squatkg = squatkg;
    }
}