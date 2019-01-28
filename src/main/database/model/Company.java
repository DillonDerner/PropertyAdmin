package main.database.model;

import java.util.Date;

public class Company {

    private int id;
    private String name;
    private String type;
    private String ein;
    private Date filing_date;
    private Date renewal_date;

    public Company() {
    }

    public Company(int id, String name, String type, String ein, Date filing_date, Date renewal_date) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.ein = ein;
        this.filing_date = filing_date;
        this.renewal_date = renewal_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEin() {
        return ein;
    }

    public void setEin(String ein) {
        this.ein = ein;
    }

    public Date getFiling_date() {
        return filing_date;
    }

    public void setFiling_date(Date filing_date) {
        this.filing_date = filing_date;
    }

    public Date getRenewal_date() {
        return renewal_date;
    }

    public void setRenewal_date(Date renewal_date) {
        this.renewal_date = renewal_date;
    }
}
