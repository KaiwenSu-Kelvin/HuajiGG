package com.huajigg.domain;
/*+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| rid    | int(11)      | NO   | PRI | NULL    | auto_increment |
| rclass | varchar(255) | YES  |     | NULL    |                |
| rname  | varchar(255) | YES  |     | NULL    |                |
| rdesc  | varchar(255) | YES  |     | NULL    |                |
| rrow   | int(255)     | YES  |     | NULL    |                |
| rcol   | int(255)     | YES  |     | NULL    |                |
| rimage | varchar(255) | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+*/
public class Rune {
    private int rid;
    private String rclass;
    private String rname;
    private String rdesc;
    private int rrow;
    private int rcol;
    private String rimage;

    @Override
    public String toString() {
        return "Rune{" +
                "rid=" + rid +
                ", rclass='" + rclass + '\'' +
                ", rname='" + rname + '\'' +
                ", rdesc='" + rdesc + '\'' +
                ", rrow=" + rrow +
                ", rcol=" + rcol +
                ", rimage='" + rimage + '\'' +
                '}';
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRclass() {
        return rclass;
    }

    public void setRclass(String rclass) {
        this.rclass = rclass;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRdesc() {
        return rdesc;
    }

    public void setRdesc(String rdesc) {
        this.rdesc = rdesc;
    }

    public int getRrow() {
        return rrow;
    }

    public void setRrow(int rrow) {
        this.rrow = rrow;
    }

    public int getRcol() {
        return rcol;
    }

    public void setRcol(int rcol) {
        this.rcol = rcol;
    }

    public String getRimage() {
        return rimage;
    }

    public void setRimage(String rimage) {
        this.rimage = rimage;
    }

    public Rune() {
    }
}
