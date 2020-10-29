/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Ing. Luis Llanos
 */
public class YearMonthCovid {
    
    double numMonth;
    String nameMonth;
    int count;
    int deaths;

    public YearMonthCovid(double numMonth, String nameMonth, int count) {
        this.numMonth = numMonth;
        this.nameMonth = nameMonth;
        this.count = count;
    }

    public YearMonthCovid(double numMonth, String nameMonth, int count, int deaths) {
        this.numMonth = numMonth;
        this.nameMonth = nameMonth;
        this.count = count;
        this.deaths = deaths;
    }
    
    

    public double getNumMonth() {
        return numMonth;
    }

    public void setNumMonth(int numMonth) {
        this.numMonth = numMonth;
    }

    public String getNameMonth() {
        return nameMonth;
    }

    public void setNameMonth(String nameMonth) {
        this.nameMonth = nameMonth;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getDeaths() {
        return deaths;
    }

    public void setDeaths(int deaths) {
        this.deaths = deaths;
    }
    
    
    
}
