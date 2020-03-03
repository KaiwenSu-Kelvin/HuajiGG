package com.huajigg.domain;


/*+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| ss_id    | int(11)      | NO   | PRI | NULL    | auto_increment |
| ss_name  | varchar(255) | YES  |     | NULL    |                |
| ss_desc  | varchar(255) | YES  |     | NULL    |                |
| ss_image | varchar(255) | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+*/
public class SummonerSpell {
    private int ssId;
    private String ssName;
    private String ssDesc;
    private String ssImage;

    public SummonerSpell() {
    }

    @Override
    public String toString() {
        return "SummonerSpell{" +
                "ssId=" + ssId +
                ", ssName='" + ssName + '\'' +
                ", ssDesc='" + ssDesc + '\'' +
                ", ssImage='" + ssImage + '\'' +
                '}';
    }

    public int getSsId() {
        return ssId;
    }

    public void setSsId(int ssId) {
        this.ssId = ssId;
    }

    public String getSsName() {
        return ssName;
    }

    public void setSsName(String ssName) {
        this.ssName = ssName;
    }

    public String getSsDesc() {
        return ssDesc;
    }

    public void setSsDesc(String ssDesc) {
        this.ssDesc = ssDesc;
    }

    public String getSsImage() {
        return ssImage;
    }

    public void setSsImage(String ssImage) {
        this.ssImage = ssImage;
    }
}
