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
    private String idCard;
    private int gender;

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

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }
}
