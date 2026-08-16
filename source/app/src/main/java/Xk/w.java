package Xk;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class w extends AbstractC14545v {

    public final C14539s f29625b;

    public final int f29626c;

    public final int f29627d;

    public final C13486b f29628e;

    public w(int i10, int i11, C13486b c13486b) {
        this.f29625b = new C14539s(0L);
        this.f29626c = i10;
        this.f29627d = i11;
        this.f29628e = c13486b;
    }

    public static w v(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj != null) {
            return new w(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f29625b);
        c14518h.a(new C14539s(this.f29626c));
        c14518h.a(new C14539s(this.f29627d));
        c14518h.a(this.f29628e);
        return new G0(c14518h);
    }

    public int u() {
        return this.f29626c;
    }

    public int x() {
        return this.f29627d;
    }

    public C13486b y() {
        return this.f29628e;
    }

    public w(E e10) {
        this.f29625b = C14539s.F(e10.I(0));
        this.f29626c = C14539s.F(e10.I(1)).O();
        this.f29627d = C14539s.F(e10.I(2)).O();
        this.f29628e = C13486b.v(e10.I(3));
    }
}
