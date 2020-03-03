package com.huajigg.domain;

/*+--------+------------------+------+-----+---------+----------------+
| Field  | Type             | Null | Key | Default | Extra          |
+--------+------------------+------+-----+---------+----------------+
| id     | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| rib_id | int(11)          | YES  |     | NULL    |                |
| iid    | int(11)          | YES  |     | NULL    |                |
+--------+------------------+------+-----+---------+----------------+*/
public class RecommendedItemBuild_Item {
    private int id;
    private int ribId;
    private Item item;


    @Override
    public String toString() {
        return "RecommendedItemBuild_Item{" +
                "id=" + id +
                ", ribId=" + ribId +
                ", item=" + item +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRibId() {
        return ribId;
    }

    public void setRibId(int ribId) {
        this.ribId = ribId;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public RecommendedItemBuild_Item() {
    }
}
