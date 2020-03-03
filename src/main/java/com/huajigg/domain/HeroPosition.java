package com.huajigg.domain;


public class HeroPosition {
    public HeroPosition() {
    }

    private int hpId;
    private Hero hero;
    private String hpPosition;
    private double hpWinRate;
    private double hpPickRate;
    private String hpTire;
    private int hpRanking;

    @Override
    public String toString() {
        return "HeroPosition{" +
                "hpId=" + hpId +
                ", hero=" + hero +
                ", hpPosition='" + hpPosition + '\'' +
                ", hpWinRate=" + hpWinRate +
                ", hpPickRate=" + hpPickRate +
                ", hpTire='" + hpTire + '\'' +
                ", hpRanking=" + hpRanking +
                '}';
    }

    public HeroPosition(int hpId, Hero hero, String hpPosition, double hpWinRate, double hpPickRate, String hpTire, int hpRanking) {
        this.hpId = hpId;
        this.hero = hero;
        this.hpPosition = hpPosition;
        this.hpWinRate = hpWinRate;
        this.hpPickRate = hpPickRate;
        this.hpTire = hpTire;
        this.hpRanking = hpRanking;
    }

    public int getHpId() {
        return hpId;
    }

    public void setHpId(int hpId) {
        this.hpId = hpId;
    }

    public Hero getHero() {
        return hero;
    }

    public void setHero(Hero hero) {
        System.out.println("<<<<<<<setHero");
        this.hero = hero;
    }

    public String getHpPosition() {
        return hpPosition;
    }

    public void setHpPosition(String hpPosition) {
        this.hpPosition = hpPosition;
    }

    public double getHpWinRate() {
        return hpWinRate;
    }

    public void setHpWinRate(double hpWinRate) {
        this.hpWinRate = hpWinRate;
    }

    public double getHpPickRate() {
        return hpPickRate;
    }

    public void setHpPickRate(double hpPickRate) {
        this.hpPickRate = hpPickRate;
    }

    public String getHpTire() {
        return hpTire;
    }

    public void setHpTire(String hpTire) {
        this.hpTire = hpTire;
    }

    public int getHpRanking() {
        return hpRanking;
    }

    public void setHpRanking(int hpRanking) {
        this.hpRanking = hpRanking;
    }
}
