package com.ssm.bean;

import java.io.Serializable;

/**
 * Created by [Zy]
 * 2016/6/5 21:46
 */
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    private String uuid;
    private String userName;
    private String birthday;
    private int gender;
    private String address;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
