package com.huajigg.domain;


/*+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| hs_id     | int(11)      | NO   | PRI | NULL    |       |
| hs_desc   | varchar(255) | YES  |     | NULL    |       |
| hid       | int(11)      | YES  |     | NULL    |       |
| hs_image  | varchar(255) | YES  |     | NULL    |       |
| hs_name   | varchar(255) | YES  |     | NULL    |       |
| hs_button | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+*/
public class HeroSkill {
    private int hsID;
    private String hsDesc;
    private Hero hero;
    private String hsImage;
    private String hsName;
    private String hsButton;

    @Override
    public String toString() {
        return "HeroSkill{" +
                "hsID=" + hsID +
                ", hsDesc='" + hsDesc + '\'' +
                ", hero=" + hero +
                ", hsImage='" + hsImage + '\'' +
                ", hsName='" + hsName + '\'' +
                ", hsButton='" + hsButton + '\'' +
                '}';
    }

    public HeroSkill() {
    }

    public int getHsID() {
        return hsID;
    }

    public void setHsID(int hsID) {
        this.hsID = hsID;
    }

    public String getHsDesc() {
        return hsDesc;
    }

    public void setHsDesc(String hsDesc) {
        this.hsDesc = hsDesc;
    }

    public Hero getHero() {
        return hero;
    }

    public void setHero(Hero hero) {
        this.hero = hero;
    }

    public String getHsImage() {
        return hsImage;
    }

    public void setHsImage(String hsImage) {
        this.hsImage = hsImage;
    }

    public String getHsName() {
        return hsName;
    }

    public void setHsName(String hsName) {
        this.hsName = hsName;
    }

    public String getHsButton() {
        return hsButton;
    }

    public void setHsButton(String hsButton) {
        this.hsButton = hsButton;
    }
}
