package sh;

import oh.G0;
import oh.M0;
import oh.Q;

public class l {

    public final C15309h f109589a;

    public final oh.E f109590b;

    public Q f109591c;

    public z f109592d;

    public l(C15309h c15309h, C15302a c15302a) {
        this.f109589a = c15309h;
        this.f109590b = new G0(c15302a);
    }

    public C15312k a() {
        return new C15312k(this.f109589a, this.f109590b, this.f109591c, this.f109592d);
    }

    public l b(C15306e c15306e) {
        this.f109592d = new z(c15306e);
        return this;
    }

    public l c(r rVar) {
        this.f109592d = new z(rVar);
        return this;
    }

    public l d(C15300C c15300c) {
        this.f109592d = new z(c15300c);
        return this;
    }

    public l e(String str) {
        this.f109591c = new M0(str);
        return this;
    }

    public l(C15309h c15309h, C15302a[] c15302aArr) {
        this.f109589a = c15309h;
        this.f109590b = new G0(c15302aArr);
    }
}
