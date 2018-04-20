package com.superadmin.Model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * Created by SP on 11/1/2017.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserDetails {
    private String username;
    private String first_name;
    private String last_name;
    private String email;
    private String phone_NO;
    private String address;
    private String city;
    private String state;
    private String last_login;
    private int is_superuser;
    private int is_active;
    private int practitioner;
    private int institution;
    private String code;
    private String message;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_NO() {
        return phone_NO;
    }

    public void setPhone_NO(String phone_NO) {
        this.phone_NO = phone_NO;
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

    public String getLast_login() {
        return last_login;
    }

    public void setLast_login(String last_login) {
        this.last_login = last_login;
    }

    public int getIs_superuser() {
        return is_superuser;
    }

    public void setIs_superuser(int is_superuser) {
        this.is_superuser = is_superuser;
    }

    public int getIs_active() {
        return is_active;
    }

    public void setIs_active(int is_active) {
        this.is_active = is_active;
    }

    public int getPractitioner() {
        return practitioner;
    }

    public void setPractitioner(int practitioner) {
        this.practitioner = practitioner;
    }

    public int getInstitution() {
        return institution;
    }

    public void setInstitution(int institution) {
        this.institution = institution;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "UserDetails{" +
                "username='" + username + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", email='" + email + '\'' +
                ", phone_NO='" + phone_NO + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", last_login='" + last_login + '\'' +
                ", is_superuser=" + is_superuser +
                ", is_active=" + is_active +
                ", practitioner=" + practitioner +
                ", institution=" + institution +
                ", code='" + code + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
