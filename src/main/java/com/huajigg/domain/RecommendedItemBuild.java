package com.huajigg.domain;


import java.util.List;

/*+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| rib_id        | int(11)      | NO   | PRI | NULL    |       |
| rib_pick_rate | float(255,0) | YES  |     | NULL    |       |
| rib_pick_num  | int(11)      | YES  |     | NULL    |       |
| rib_win_rate  | float(255,0) | YES  |     | NULL    |       |
| hid           | int(11)      | YES  |     | NULL    |       |
| rib_position  | varchar(255) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+*/
public class RecommendedItemBuild {
    private int ribId;
    private float ribPickRate;
    private int ribPickNum;
    private float ribWinRate;
    private Hero hero;
    private String ribPosition;
    private List<Item> items;

    @Override
    public String toString() {
        return "RecommendedItemBuild{" +
                "ribId=" + ribId +
                ", ribPickRate=" + ribPickRate +
                ", ribPickNum=" + ribPickNum +
                ", ribWinRate=" + ribWinRate +
                ", hero=" + hero +
                ", ribPosition='" + ribPosition + '\'' +
                ", items=" + items +
                '}';
    }

    public int getRibId() {
        return ribId;
    }

    public void setRibId(int ribId) {
        this.ribId = ribId;
    }

    public float getRibPickRate() {
        return ribPickRate;
    }

    public void setRibPickRate(float ribPickRate) {
        this.ribPickRate = ribPickRate;
    }

    public int getRibPickNum() {
        return ribPickNum;
    }

    public void setRibPickNum(int ribPickNum) {
        this.ribPickNum = ribPickNum;
    }

    public float getRibWinRate() {
        return ribWinRate;
    }

    public void setRibWinRate(float ribWinRate) {
        this.ribWinRate = ribWinRate;
    }

    public Hero getHero() {
        return hero;
    }

    public void setHero(Hero hero) {
        this.hero = hero;
    }

    public String getRibPosition() {
        return ribPosition;
    }

    public void setRibPosition(String ribPosition) {
        this.ribPosition = ribPosition;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public RecommendedItemBuild() {
    }
}
