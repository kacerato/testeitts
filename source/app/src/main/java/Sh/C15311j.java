package sh;

import oh.G0;
import oh.M0;
import oh.Q;
import sh.C15310i;

public class C15311j {

    public final C15309h f109581a;

    public final oh.E f109582b;

    public Q f109583c;

    public C15310i.a f109584d;

    public C15311j(C15309h c15309h, C15302a c15302a) {
        this.f109581a = c15309h;
        this.f109582b = new G0(c15302a);
    }

    public C15310i a() {
        return new C15310i(this.f109581a, this.f109582b, this.f109583c, this.f109584d);
    }

    public C15311j b(C15306e c15306e) {
        this.f109584d = new C15310i.a(c15306e);
        return this;
    }

    public C15311j c(C15300C c15300c) {
        this.f109584d = new C15310i.a(c15300c);
        return this;
    }

    public C15311j d(String str) {
        this.f109583c = new M0(str);
        return this;
    }

    public C15311j(C15309h c15309h, C15302a[] c15302aArr) {
        this.f109581a = c15309h;
        this.f109582b = new G0(c15302aArr);
    }
}
