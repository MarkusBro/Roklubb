package models;

import java.sql.Time;
import java.text.DecimalFormat;
import java.time.LocalTime;

public class TableModel {
    Integer Rank;
    double Score;
    Integer Født;
    String Navn;
    String Klubb;
    Time meter2000;
    Time meter3000;
    Integer meter60;
    Integer krhev;
    double sargeant;
    Integer beveg;

    public TableModel(Integer rank, double score, Integer født,
                      String navn, String klubb, Time meter2000,
                      Time meter3000, Integer meter60, Integer krhev,
                      double sargeant, Integer beveg) {
        Rank = rank;
        Score = score;
        Født = født;
        Navn = navn;
        Klubb = klubb;
        this.meter2000 = meter2000;
        this.meter3000 = meter3000;
        this.meter60 = meter60;
        this.krhev = krhev;
        this.sargeant = sargeant;
        this.beveg = beveg;
    }

    public Integer getRank() {
        return Rank;
    }

    public void setRank(Integer rank) {
        Rank = rank;
    }

    public double getScore() {
        return Score;
    }

    public void setScore(double score) {
        Score = score;
    }

    public Integer getFødt() {
        return Født;
    }

    public void setFødt(Integer født) {
        Født = født;
    }

    public String getNavn() {
        return Navn;
    }

    public void setNavn(String navn) {
        Navn = navn;
    }

    public String getKlubb() {
        return Klubb;
    }

    public void setKlubb(String klubb) {
        Klubb = klubb;
    }

    public Time getMeter2000() {
        return meter2000;
    }

    public void setMeter2000(Time meter2000) {
        this.meter2000 = meter2000;
    }

    public Time getMeter3000() {
        return meter3000;
    }

    public void setMeter3000(Time meter3000) {
        this.meter3000 = meter3000;
    }

    public Integer getMeter60() {
        return meter60;
    }

    public void setMeter60(Integer meter60) {
        this.meter60 = meter60;
    }

    public Integer getKrhev() {
        return krhev;
    }

    public void setKrhev(Integer krhev) {
        this.krhev = krhev;
    }

    public double getSargeant() {
        return sargeant;
    }

    public void setSargeant(double sargeant) {
        this.sargeant = sargeant;
    }

    public Integer getBeveg() {
        return beveg;
    }

    public void setBeveg(Integer beveg) {
        this.beveg = beveg;
    }
}

