package com.huajigg.domain;


/*+--------+------------------+------+-----+---------+----------------+
| Field  | Type             | Null | Key | Default | Extra          |
+--------+------------------+------+-----+---------+----------------+
| iid    | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| iname  | varchar(255)     | YES  |     | NULL    |                |
| idesc  | varchar(255)     | YES  |     | NULL    |                |
| iimage | varchar(255)     | YES  |     | NULL    |                |
+--------+------------------+------+-----+---------+----------------+*/
public class Item {
    private int iid;
    private String iname;
    private String idesc;
    private String iimage;


    @Override
    public String toString() {
        return "Item{" +
                "iid=" + iid +
                ", iname='" + iname + '\'' +
                ", idesc='" + idesc + '\'' +
                ", iimage='" + iimage + '\'' +
                '}';
    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public String getIname() {
        return iname;
    }

    public void setIname(String iname) {
        this.iname = iname;
    }

    public String getIdesc() {
        return idesc;
    }

    public void setIdesc(String idesc) {
        this.idesc = idesc;
    }

    public String getIimage() {
        return iimage;
    }

    public void setIimage(String iimage) {
        this.iimage = iimage;
    }

    public Item() {
    }
}
