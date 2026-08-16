package Bg;

import yg.EnumC16187c;

public class a extends q {

    public int f1728b;

    public Cg.b f1729c;

    public String f1730d;

    public Cg.a f1731e;

    public Cg.d f1732f;

    public a() {
        b(EnumC16187c.AES_EXTRA_DATA_RECORD);
        this.f1728b = 7;
        this.f1729c = Cg.b.TWO;
        this.f1730d = "AE";
        this.f1731e = Cg.a.KEY_STRENGTH_256;
        this.f1732f = Cg.d.DEFLATE;
    }

    public Cg.a c() {
        return this.f1731e;
    }

    public Cg.b d() {
        return this.f1729c;
    }

    public Cg.d e() {
        return this.f1732f;
    }

    public int f() {
        return this.f1728b;
    }

    public String g() {
        return this.f1730d;
    }

    public void h(Cg.a aVar) {
        this.f1731e = aVar;
    }

    public void i(Cg.b bVar) {
        this.f1729c = bVar;
    }

    public void j(Cg.d dVar) {
        this.f1732f = dVar;
    }

    public void k(int i10) {
        this.f1728b = i10;
    }

    public void l(String str) {
        this.f1730d = str;
    }
}
