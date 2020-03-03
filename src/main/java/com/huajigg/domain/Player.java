package com.huajigg.domain;

public class Player {
    private int pid;
    private String pname;
    private int plevel;
    private String prank;
    private float pWinRate;
    private int pranking;
    private int pWinNum;
    private int pLoseNum;
    private String pimage;

    @Override
    public String toString() {
        return "Player{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", plevel=" + plevel +
                ", prank='" + prank + '\'' +
                ", pWinRate=" + pWinRate +
                ", pranking=" + pranking +
                ", pWinNum=" + pWinNum +
                ", pLoseNum=" + pLoseNum +
                ", pimage='" + pimage + '\'' +
                '}';
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPlevel() {
        return plevel;
    }

    public void setPlevel(int plevel) {
        this.plevel = plevel;
    }

    public String getPrank() {
        return prank;
    }

    public void setPrank(String prank) {
        this.prank = prank;
    }

    public float getpWinRate() {
        return pWinRate;
    }

    public void setpWinRate(float pWinRate) {
        this.pWinRate = pWinRate;
    }

    public int getPranking() {
        return pranking;
    }

    public void setPranking(int pranking) {
        this.pranking = pranking;
    }

    public int getpWinNum() {
        return pWinNum;
    }

    public void setpWinNum(int pWinNum) {
        this.pWinNum = pWinNum;
    }

    public int getpLoseNum() {
        return pLoseNum;
    }

    public void setpLoseNum(int pLoseNum) {
        this.pLoseNum = pLoseNum;
    }

    public Player() {
    }
}
