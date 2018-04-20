package com.superadmin.Model;

/**
 * Created by SP on 10/27/2017.
 */
public class Institution {
    private int id;
    private String institution_Name;
    private String address;
    private String city;
    private String state;
    private String contact;
    private String longitude;
    private String latitude;
    private int institution_type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getInstitution_Name() {
        return institution_Name;
    }

    public void setInstitution_Name(String institution_Name) {
        this.institution_Name = institution_Name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public int getInstitution_type() {
        return institution_type;
    }

    public void setInstitution_type(int institution_type) {
        this.institution_type = institution_type;
    }
}
