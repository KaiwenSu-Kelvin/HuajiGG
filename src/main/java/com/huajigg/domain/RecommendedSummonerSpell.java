package com.huajigg.domain;


public class RecommendedSummonerSpell{

    private int rssId;
    private float rssPickRate;
    private int rssPickNum;
    private float rssWinRate;
    private Hero hero;
    private String rssPosition;
    private SummonerSpell rssSummonerSpell1;
    private SummonerSpell rssSummonerSpell2;

    @Override
    public String toString() {
        return "RecommendedSummonerSpell{" +
                "rssId=" + rssId +
                ", rssPickRate=" + rssPickRate +
                ", rssPickNum=" + rssPickNum +
                ", rssWinRate=" + rssWinRate +
                ", hero=" + hero +
                ", rssPosition='" + rssPosition + '\'' +
                ", rssSummonerSpell1=" + rssSummonerSpell1 +
                ", rssSummonerSpell2=" + rssSummonerSpell2 +
                '}';
    }

    public int getRssId() {
        return rssId;
    }

    public void setRssId(int rssId) {
        this.rssId = rssId;
    }

    public float getRssPickRate() {
        return rssPickRate;
    }

    public void setRssPickRate(float rssPickRate) {
        this.rssPickRate = rssPickRate;
    }

    public int getRssPickNum() {
        return rssPickNum;
    }

    public void setRssPickNum(int rssPickNum) {
        this.rssPickNum = rssPickNum;
    }

    public float getRssWinRate() {
        return rssWinRate;
    }

    public void setRssWinRate(float rssWinRate) {
        this.rssWinRate = rssWinRate;
    }

    public Hero getHero() {
        return hero;
    }

    public void setHero(Hero hero) {
        this.hero = hero;
    }

    public String getRssPosition() {
        return rssPosition;
    }

    public void setRssPosition(String rssPosition) {
        this.rssPosition = rssPosition;
    }

    public SummonerSpell getRssSummonerSpell1() {
        return rssSummonerSpell1;
    }

    public void setRssSummonerSpell1(SummonerSpell rssSummonerSpell1) {
        System.out.println("<<<<<<<setRss");
        this.rssSummonerSpell1 = rssSummonerSpell1;
    }

    public SummonerSpell getRssSummonerSpell2() {
        return rssSummonerSpell2;
    }

    public void setRssSummonerSpell2(SummonerSpell rssSummonerSpell2) {
        this.rssSummonerSpell2 = rssSummonerSpell2;
    }

    public RecommendedSummonerSpell() {
    }
}
