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
public class Infected {
    String country;
    String whoregion;
    int total;
    int deaths;

    public Infected(String country, String whoregion, int total, int deaths) {
        this.country = country;
        this.whoregion = whoregion;
        this.total = total;
        this.deaths = deaths;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getWhoregion() {
        return whoregion;
    }

    public void setWhoregion(String whoregion) {
        this.whoregion = whoregion;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getDeaths() {
        return deaths;
    }

    public void setDeaths(int deaths) {
        this.deaths = deaths;
    }
    
    
    
}
