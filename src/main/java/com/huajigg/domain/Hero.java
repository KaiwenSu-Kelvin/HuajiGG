package com.huajigg.domain;

public class Hero {
    private int hid;
    private String hname;
    private String image;

    @Override
    public String toString() {
        return "Hero{" +
                "hid=" + hid +
                ", hname='" + hname + '\'' +
                ", image='" + image + '\'' +
                '}';
    }

    public Hero(int hid, String hname, String image) {
        this.hid = hid;
        this.hname = hname;
        this.image = image;
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
