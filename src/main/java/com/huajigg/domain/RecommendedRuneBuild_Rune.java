package com.huajigg.domain;

/*+---------------+------------------+------+-----+---------+----------------+
| Field         | Type             | Null | Key | Default | Extra          |
+---------------+------------------+------+-----+---------+----------------+
| id            | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| rrb_id        | int(11)          | YES  |     | NULL    |                |
| rid           | int(11)          | YES  |     | NULL    |                |
+---------------+------------------+------+-----+---------+----------------+*/

public class RecommendedRuneBuild_Rune {
    private int id;
    private int rrbId;
    private Rune rune;

    @Override
    public String toString() {
        return "RecommendedRuneBuild_Rune{" +
                "id=" + id +
                ", rrbId=" + rrbId +
                ", rune=" + rune +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRrbId() {
        return rrbId;
    }

    public void setRrbId(int rrbId) {
        this.rrbId = rrbId;
    }

    public Rune getRune() {
        return rune;
    }

    public void setRune(Rune rune) {
        this.rune = rune;
    }

    public RecommendedRuneBuild_Rune() {
    }
}
