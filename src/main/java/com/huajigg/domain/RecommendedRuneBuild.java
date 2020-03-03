package com.huajigg.domain;


import java.util.List;

/*+---------------+------------------+------+-----+---------+----------------+
| Field         | Type             | Null | Key | Default | Extra          |
+---------------+------------------+------+-----+---------+----------------+
| rrb_id        | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| rrb_pick_rate | float(10,2)      | YES  |     | NULL    |                |
| rrb_pick_num  | int(11)          | YES  |     | NULL    |                |
| rrb_win_rate  | float(10,2)      | YES  |     | NULL    |                |
| hid           | int(11)          | YES  |     | NULL    |                |
| rrb_position   | varchar(255)     | YES  |     | NULL    |                |
+---------------+------------------+------+-----+---------+----------------+*/
public class RecommendedRuneBuild {
    private int rrbId;
    private float rrbPickRate;
    private int rrbPickNum;
    private float rrbWinRate;
    private Hero hero;
    private String rrbPosition;
    private List<Rune> Runes;

    @Override
    public String toString() {
        return "RecommendedRune{" +
                "rrbId=" + rrbId +
                ", rrbPickRate=" + rrbPickRate +
                ", rrbPickNum=" + rrbPickNum +
                ", rrbWinRate=" + rrbWinRate +
                ", hero=" + hero +
                ", rrbPosition='" + rrbPosition + '\'' +
                ", Runes=" + Runes +
                '}';
    }

    public int getRrbId() {
        return rrbId;
    }

    public void setRrbId(int rrbId) {
        this.rrbId = rrbId;
    }

    public float getRrbPickRate() {
        return rrbPickRate;
    }

    public void setRrbPickRate(float rrbPickRate) {
        this.rrbPickRate = rrbPickRate;
    }

    public int getRrbPickNum() {
        return rrbPickNum;
    }

    public void setRrbPickNum(int rrbPickNum) {
        this.rrbPickNum = rrbPickNum;
    }

    public float getRrbWinRate() {
        return rrbWinRate;
    }

    public void setRrbWinRate(float rrbWinRate) {
        this.rrbWinRate = rrbWinRate;
    }

    public Hero getHero() {
        return hero;
    }

    public void setHero(Hero hero) {
        this.hero = hero;
    }

    public String getRrbPosition() {
        return rrbPosition;
    }

    public void setRrbPosition(String rrbPosition) {
        this.rrbPosition = rrbPosition;
    }

    public List<Rune> getRunes() {
        return Runes;
    }

    public void setRunes(List<Rune> runes) {
        Runes = runes;
    }

    public RecommendedRuneBuild() {
    }
}

